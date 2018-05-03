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
//    @IBOutlet var mainPicture: UIImageView!
//    @IBOutlet var articleTitle: UILabel!
//    @IBOutlet var articleSource: UILabel!
//    @IBOutlet var articleDescription: UILabel!
//    @IBOutlet var articleText: UITextView!
    @IBOutlet weak var titleView: HCITitleNavigationBarView!
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var toolbar: UIToolbar!
    
    let articleLink = "http://fakearticle.com/article/234562/"
    
    var category = String()
    var followPressed = false
    var notificationPressed = false
    var likePressed = false
    var savePressed = false
    
    var barButtonItems = [UIBarButtonItem]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.titleView.category.text = category
        
        let htmlHelper = HTMLHelper()
        webView.loadHTMLString(htmlHelper.convertToHTMLString(news: fakeNews), baseURL: nil)
        initializeToolbar()
        
        // I add a function for changing a behaviour and image of button.
        // Now it after pressing go back to ViewController.
        
        self.titleView.activateBackButton()
        
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
    
    func getHTMLStr() -> String {
        var html = "<html>"
        html += "<head>"
        html += "<meta name=\"viewport\" content=\"initial-scale=1\">"
        html += "<style> #title { text-align: center; font-size: 110%; margin: 3%}"
        html += "#source { text-align: center; font-size: 75%; }"
        html += "#title, #description { font-weight: 500; }"
        html += "#text, #description { text-align: justify; font-size: 90%; }"
        html += "#text, #source, #description { margin: 5%; }</style>"
        html += "</head>"
        html += "<body><font face = \"Avenir\">"
        html += "<img src=\"" + fakeArticlePicLink + "\" width = 360>"
        html += "<div id = \"title\"><p>" + fakeTitle + "</p></div>"
        html += "<div id = \"source\"><p>" + fakeSource + "</p></div>"
        html += "<div id = \"description\"><p>" + fakeDescription + "</p></div>"
        html += "<div id = \"text\"><p>" + fakeText + "</p></div>"
        html += "</font></body>"
        html += "</html>"
        return html;
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
        
        for barButton in barButtonItems {
            barButton.tintColor = defaultColor
        }
        
        toolbar.items = barButtonItems
    }
    
    @objc func followPressed(sender: UIBarButtonItem) {
        if (!followPressed) {
            followPressed = true
            sender.image =  UIImage(named: "followPressedIcon")
            addToFollowed()
        } else {
            followPressed = false
            sender.image =  UIImage(named: "followIcon")
            removeFromFollowed()
        }
    }
    
    @objc func notificationPressed(sender: UIBarButtonItem) {
        if (!notificationPressed) {
            notificationPressed = true
            sender.image =  UIImage(named: "notificationPressedIcon")
            enableNotifications()
        } else {
            notificationPressed = false
            sender.image =  UIImage(named: "notificationIcon")
            disableNotifications()
        }
    }
    
    @objc func likePressed(sender: UIBarButtonItem) {
        if (!likePressed) {
            likePressed = true
            sender.image =  UIImage(named: "likePressedIcon")
            affectRecommendations()
        } else {
            likePressed = false
            sender.image =  UIImage(named: "likeIcon")
            affectRecommendations()
        }
    }
    
    @objc func savePressed(sender: UIBarButtonItem) {
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
    
    @objc func share(sender: UIBarButtonItem) {
        let avc = UIActivityViewController(activityItems: [articleLink], applicationActivities: [])
        avc.popoverPresentationController?.sourceView = self.view
        present(avc, animated: true)
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
        
    }
}
