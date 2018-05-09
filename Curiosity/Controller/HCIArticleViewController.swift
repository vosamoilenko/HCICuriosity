//
//  HCIArticleViewController.swift
//  Curiosity
//
//  Created by Alina Godun on 30.04.18.
//  Copyright © 2018 InteractiveNewsExplorer. All rights reserved.
//
import UIKit
import WebKit

class HCIArticleViewController: UIViewController {
    @IBOutlet weak var titleView: HCITitleNavigationBarView!
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var toolbar: UIToolbar!

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var topWebViewConstraint: NSLayoutConstraint!
    
    var category = String()
    var article: News!
    var newsManager: NewsManager!
    var isSearchBarVisible:Bool = false
    var barButtonItems = [UIBarButtonItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        loadArticle()
        initializeToolbar()
        
        self.titleView.category.text = category
        
        // I add a function for changing a behaviour and image of button.
        // Now it after pressing go back to ViewController.
        self.titleView.activateBackButton()
        self.titleView.searchButton.isHidden = true
        
        // Set observer for recieving a notification from
        // titleView.menuButton when it's pressed.
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(dismissVc),
            name: Notification.Name("backButtonPressed"),
            object: nil)
    }
    
    // This func is connected with observer as a selector.
    @objc func dismissVc() {
//        var previousVC = self.navigationController?.viewControllers[(self.navigationController?.viewControllers.count)!-2] as? ViewController
//        previousVC?.updateTable(.none)
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    func loadArticle() {
        let htmlHelper = HTMLHelper()
        webView.loadHTMLString(htmlHelper.convertToHTMLString(news: article), baseURL: nil)
    }
    
    func initializeToolbar() {
        let iconNames = ["followIcon", "notificationIcon", "likeIcon", "saveIcon", "shareIcon"]
        let pressedIconsNames = ["followPressedIcon", "notificationPressedIcon", "likePressedIcon", "savePressedIcon", "shareIcon"]
        let selectors = [#selector(followPressed(sender:)),
                         #selector(notificationPressed(sender:)),
                         #selector(self.likePressed(sender:)),
                         #selector(savePressed(sender:)),
                         #selector(share(sender:))]
        let buttonStates = article.getButtonStates()
        
        barButtonItems.append(beginningSpace)
        for i in 0 ..< iconNames.count {
            let imageName = buttonStates[i] ? pressedIconsNames[i] : iconNames[i]
            let currentButton = UIBarButtonItem(image: UIImage(named: imageName), style: .plain, target: self, action: selectors[i])
            barButtonItems.append(currentButton)
            barButtonItems.append(usualSpace)
        }
        barButtonItems.removeLast()
        
        for barButton in barButtonItems {
            barButton.tintColor = defaultColor
        }
        
        toolbar.items = barButtonItems
    }
    
    @objc func followPressed(sender: UIBarButtonItem) {
        if (!article.isFollowed) {
            article.isFollowed = true
            sender.image =  UIImage(named: "followPressedIcon")
            addToFollowed()
        } else {
            article.isFollowed = false
            sender.image =  UIImage(named: "followIcon")
            removeFromFollowed()
        }
    }
    
    @objc func notificationPressed(sender: UIBarButtonItem) {
        if (!article.notificationsEnabled) {
            article.notificationsEnabled = true
            sender.image =  UIImage(named: "notificationPressedIcon")
            enableNotifications()
        } else {
            article.notificationsEnabled = false
            sender.image =  UIImage(named: "notificationIcon")
            disableNotifications()
        }
    }
    
    @objc func likePressed(sender: UIBarButtonItem) {
        if (!article.isLiked) {
            article.isLiked = true
            sender.image =  UIImage(named: "likePressedIcon")
            affectRecommendations()
        } else {
            article.isLiked = false
            sender.image =  UIImage(named: "likeIcon")
            affectRecommendations()
        }
    }
    
    @objc func savePressed(sender: UIBarButtonItem) {
        if (!article.isSaved) {
            article.isSaved = true
            sender.image =  UIImage(named: "savePressedIcon")
            addToSaved()
        } else {
            article.isSaved = false
            sender.image =  UIImage(named: "saveIcon")
            removeFromSaved()
        }
    }
    
    @objc func share(sender: UIBarButtonItem) {
        let avc = UIActivityViewController(activityItems: [article.sourceLink], applicationActivities: [])
        avc.popoverPresentationController?.sourceView = self.view
        present(avc, animated: true)
    }
    
    func addToFollowed() {
        newsManager.categoriesNews[.recommended]?.append(article)
    }
    
    func removeFromFollowed() {
        var recommended = newsManager.categoriesNews[.recommended]
        let index = recommended?.index(of: article)
        recommended?.remove(at: index!)
    }
    
    func affectRecommendations() {
        newsManager.categoriesNews[.recommended]?.append(article)
    }
    
    func addToSaved() {
        newsManager.categoriesNews[.favourites]?.append(article)
    }
    
    func removeFromSaved() {
        var favourites = newsManager.categoriesNews[.favourites]
        let index = favourites?.index(of: article)
        favourites?.remove(at: index!)
    }
    
    //To Do
    func enableNotifications() {
        
    }
    
    func disableNotifications() {
        
    }
}
