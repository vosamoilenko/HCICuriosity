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
<<<<<<< HEAD
    
    @IBOutlet weak var searchBar: UISearchBar!
    var category = String()
    var followPressed = false
    var notificationPressed = false
    var likePressed = false
    var savePressed = false
    
    var articleID: Int!

    @IBOutlet weak var topWebViewConstraint: NSLayoutConstraint!
    var isSearchBarVisible:Bool = false

    var barButtonItems = [UIBarButtonItem]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.titleView.category.text = category
        
        let htmlHelper = HTMLHelper()
        
        webView.loadHTMLString(htmlHelper.convertToHTMLString(news: fakeDataSet[articleID]), baseURL: nil)
        initializeToolbar()
        
        // I add a function for changing a behaviour and image of button.
        // Now it after pressing go back to ViewController.
        self.titleView.activateBackButton()
=======

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var topWebViewConstraint: NSLayoutConstraint!
    
    var prevVC: ViewController!
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
>>>>>>> master
        
        // Set observer for recieving a notification from
        // titleView.menuButton when it's pressed.
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(dismissVc),
            name: Notification.Name("backButtonPressed"),
            object: nil)
<<<<<<< HEAD
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(openSearchBar),
            name: Notification.Name("searchButtonPressedIDK"),
            object: nil)
    }
    
    @objc func openSearchBar() {
        
        var value = self.topWebViewConstraint.constant
        
        if !isSearchBarVisible {
            value += self.searchBar.frame.size.height
            self.searchBar.becomeFirstResponder()
        } else {
            value -= self.searchBar.frame.size.height
            self.searchBar.resignFirstResponder()
        }
        isSearchBarVisible = !isSearchBarVisible
        self.topWebViewConstraint.constant = value
        UIView.animate(withDuration: 0.3, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
=======
>>>>>>> master
    }
    
    // This func is connected with observer as a selector.
    @objc func dismissVc() {
<<<<<<< HEAD
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    func initializeToolbar() {
        let beginningSpace: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        beginningSpace.width = CGFloat(toolbarBeginningSpace)
        let usualSpace : UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        usualSpace.width = CGFloat(toolbarSpace)
        
        barButtonItems.append(beginningSpace)
        barButtonItems.append(UIBarButtonItem(image: UIImage(named: "followIcon"), style: .plain, target: self, action: #selector(followPressed(sender:))))
        barButtonItems.append(usualSpace)
        barButtonItems.append(UIBarButtonItem(image: UIImage(named: "notificationIcon"), style: .plain, target: self, action: #selector(notificationPressed(sender:))))
        barButtonItems.append(usualSpace)
        barButtonItems.append(UIBarButtonItem(image: UIImage(named: "likeIcon"), style: .plain, target: self, action: #selector(likePressed(sender:))))
        barButtonItems.append(usualSpace)
        barButtonItems.append(UIBarButtonItem(image: UIImage(named: "saveIcon"), style: .plain, target: self, action: #selector(savePressed(sender:))))
        barButtonItems.append(usualSpace)
        barButtonItems.append(UIBarButtonItem(image: UIImage(named: "shareIcon"), style: .plain, target: self, action: #selector(share(sender:))))
=======
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
>>>>>>> master
        
        for barButton in barButtonItems {
            barButton.tintColor = defaultColor
        }
        
        toolbar.items = barButtonItems
    }
    
    @objc func followPressed(sender: UIBarButtonItem) {
<<<<<<< HEAD
        if (!followPressed) {
            followPressed = true
            sender.image =  UIImage(named: "followPressedIcon")
            addToFollowed()
        } else {
            followPressed = false
=======
        if (!article.isFollowed) {
            article.isFollowed = true
            sender.image =  UIImage(named: "followPressedIcon")
            addToFollowed()
        } else {
            article.isFollowed = false
>>>>>>> master
            sender.image =  UIImage(named: "followIcon")
            removeFromFollowed()
        }
    }
    
    @objc func notificationPressed(sender: UIBarButtonItem) {
<<<<<<< HEAD
        if (!notificationPressed) {
            notificationPressed = true
            sender.image =  UIImage(named: "notificationPressedIcon")
            enableNotifications()
        } else {
            notificationPressed = false
=======
        if (!article.notificationsEnabled) {
            article.notificationsEnabled = true
            sender.image =  UIImage(named: "notificationPressedIcon")
            enableNotifications()
        } else {
            article.notificationsEnabled = false
>>>>>>> master
            sender.image =  UIImage(named: "notificationIcon")
            disableNotifications()
        }
    }
    
    @objc func likePressed(sender: UIBarButtonItem) {
<<<<<<< HEAD
        if (!likePressed) {
            likePressed = true
            sender.image =  UIImage(named: "likePressedIcon")
            affectRecommendations()
        } else {
            likePressed = false
=======
        if (!article.isLiked) {
            article.isLiked = true
            sender.image =  UIImage(named: "likePressedIcon")
            affectRecommendations()
        } else {
            article.isLiked = false
>>>>>>> master
            sender.image =  UIImage(named: "likeIcon")
            affectRecommendations()
        }
    }
    
    @objc func savePressed(sender: UIBarButtonItem) {
<<<<<<< HEAD
        if (!savePressed) {
            savePressed = true
            sender.image =  UIImage(named: "savePressedIcon")
            addToSaved()
        } else {
            savePressed = false
            sender.image =  UIImage(named: "saveIcon")
            removeFromSaved()
        }
    }
    // FIX: Error because i removed all your's fakeData from Constants file
    @objc func share(sender: UIBarButtonItem) {
        
//        let avc = UIActivityViewController(activityItems: [fakeArticleLink], applicationActivities: [])
//        avc.popoverPresentationController?.sourceView = self.view
//        present(avc, animated: true)
    }
    
    //To Do When Categories are ready
    func addToFollowed() {
        
    }
    
    func removeFromFollowed() {
        
    }
    
    func enableNotifications() {
        
    }
    
    func disableNotifications() {
        
    }
    
    func affectRecommendations() {
        
    }
    
    func addToSaved() {
        
    }
    
    func removeFromSaved() {
=======
        if (!article.isSaved) {
            article.isSaved = true
            sender.image =  UIImage(named: "savePressedIcon")
            addToFavorites()
        } else {
            article.isSaved = false
            sender.image =  UIImage(named: "saveIcon")
            removeFromFavorites()
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
    
    func addToFavorites() {
        newsManager.categoriesNews[.favourites]?.append(article)
    }
    
    func removeFromFavorites() {
        let index = newsManager.categoriesNews[.favourites]!.index(of: article)
        newsManager.categoriesNews[.favourites]!.remove(at: index!)
    }
    
    //To Do
    func enableNotifications() {
        
    }
    
    func disableNotifications() {
>>>>>>> master
        
    }
}
