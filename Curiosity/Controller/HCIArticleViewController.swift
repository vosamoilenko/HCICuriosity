//
//  HCIArticleViewController.swift
//  Curiosity
//
//  Created by Alina Godun on 30.04.18.
//  Copyright © 2018 InteractiveNewsExplorer. All rights reserved.
//
import UIKit
import WebKit
import UserNotifications

class HCIArticleViewController: UIViewController {
    @IBOutlet weak var titleView: HCITitleNavigationBarView!
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var toolbar: UIToolbar!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var prevVC: ViewController!
    var category = String()
    var article: News!
    var newsManager: NewsManager!
    
    var isSearchBarVisible:Bool = false
    var barButtonItems = [UIBarButtonItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.activityIndicator.startAnimating()
        
        loadArticle()
        initializeToolbar()
        
        self.webView.navigationDelegate = self
        
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
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    //load article information into html and present it
    func loadArticle() {
        let htmlHelper = HTMLHelper()
        let baseURL = Bundle.main.bundleURL.appendingPathComponent("Resources")
        webView.loadHTMLString(htmlHelper.convertToHTMLString(news: article), baseURL: baseURL)
    }
    
    //load toolbar, set buttons and connect them to actions
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
            showAlert(title: "Followed", message: "Articles from this source will now appear in \"Recommended\".")
            
            article.isFollowed = true
            sender.image =  UIImage(named: "followPressedIcon")
            addToFollowed()
        } else {
            showAlert(title: "Unfollowed", message: "Articles from this source will not appear in \"Recommended\" anymore.")
            
            article.isFollowed = false
            sender.image =  UIImage(named: "followIcon")
            removeFromFollowed()
        }
    }
    
    @objc func notificationPressed(sender: UIBarButtonItem) {
        if (!article.notificationsEnabled) {
            showAlert(title: "Notifications enabled", message: "You will get notifications about articles like this.")
            
            article.notificationsEnabled = true
            sender.image =  UIImage(named: "notificationPressedIcon")
            enableNotifications()
        } else {
            showAlert(title: "Notifications disabled", message: "You won't get notifications about articles like this anymore.")
            
            article.notificationsEnabled = false
            sender.image =  UIImage(named: "notificationIcon")
            disableNotifications()
        }
    }
    
    @objc func likePressed(sender: UIBarButtonItem) {
        if (!article.isLiked) {
            showAlert(title: "Liked", message: "More articles like this will appear in \"Recommended\".")
            
            article.isLiked = true
            sender.image =  UIImage(named: "likePressedIcon")
            affectRecommendations()
        } else {
            showAlert(title: "Disliked", message: "Less articles like this will appear in \"Recommended\".")
            
            article.isLiked = false
            sender.image =  UIImage(named: "likeIcon")
            affectRecommendations()
        }
    }
    
    @objc func savePressed(sender: UIBarButtonItem) {
        if (!article.isSaved) {
            showAlert(title: "Saved", message: "The article was saved to \"Favourites\".")
            
            article.isSaved = true
            sender.image =  UIImage(named: "savePressedIcon")
            addToFavorites()
        } else {
            showAlert(title: "Removed", message: "The article was removed from \"Favourites\".")
            
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
    
    func showAlert(title: String, message: String) {
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        present(ac, animated: true)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.8) {
            ac.dismiss(animated: true, completion: nil)
        }
    }
    
    func addToFollowed() {
        if (!(newsManager.categoriesNews[.recommended]?.contains(article))!) {
            newsManager.categoriesNews[.recommended]?.append(article)
        }
    }
    
    func removeFromFollowed() {
        let index = newsManager.categoriesNews[.recommended]?.index(of: article)
        if (index! > 0) {
            newsManager.categoriesNews[.recommended]?.remove(at: index!)
        }
    }
    
    func affectRecommendations() {
        if (!(newsManager.categoriesNews[.recommended]?.contains(article))!) {
            newsManager.categoriesNews[.recommended]?.append(article)
        }
    }
    
    func addToFavorites() {
        if (!(newsManager.categoriesNews[.favourites]?.contains(article))!) {
            newsManager.categoriesNews[.favourites]?.append(article)
        }
    }
    
    func removeFromFavorites() {
        let index = newsManager.categoriesNews[.favourites]!.index(of: article)
        if (index! > 0) {
            newsManager.categoriesNews[.favourites]!.remove(at: index!)
        }
    }
    
    func enableNotifications() {
        NotificationManager.shared.sendLocalNotification(in: TimeInterval.init(2), cat: article.category)
    }
    
    func disableNotifications() {
        
    }
}

extension HCIArticleViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView,
                 didFinish navigation: WKNavigation!) {
        self.activityIndicator.isHidden = true
    }

}


