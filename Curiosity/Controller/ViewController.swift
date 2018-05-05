//
//  ViewController.swift
//  Curiosity
//
//  Created by Vo1 on 29.04.18.
//  Copyright © 2018 InteractiveNewsExplorer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var titleView: HCITitleNavigationBarView!
    @IBOutlet var rightSwipeRecognizer: UISwipeGestureRecognizer!
    @IBOutlet var leftSwipeRecognizer: UISwipeGestureRecognizer!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var topConstrain: NSLayoutConstraint!
    
    var newsManager = NewsManager()
    
    var isSearchBarVisible = false
    var isMenuBarVisible = false
    var searchRequest: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.delegate = self
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.searchBar.delegate = self
        
        let nib = UINib(nibName: "HCINewsTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "HCINewsTableViewCell")
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 44
        
        self.titleView.category.text = self.newsManager.categories[self.newsManager.currentCategoryIndex]
        
        self.leftSwipeRecognizer.addTarget(self, action: #selector(handleSwipe))
        self.rightSwipeRecognizer.addTarget(self, action: #selector(handleSwipe))
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(openSearchBar),
            name: Notification.Name("searchButtonPressed"),
            object: nil)
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(openMenuBar),
            name: Notification.Name("menuButtonPressed"),
            object: nil)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if isSearchBarVisible {
            openSearchBar()
        }
    }
    @objc func openMenuBar() {
        print("check")
    }
    @objc func openSearchBar() {
        var value = self.topConstrain.constant

        if !isSearchBarVisible {
            value += self.searchBar.frame.size.height
            self.searchBar.becomeFirstResponder()
        } else {
            value -= self.searchBar.frame.size.height
            self.searchBar.resignFirstResponder()
        }
        isSearchBarVisible = !isSearchBarVisible
        self.topConstrain.constant = value
        UIView.animate(withDuration: 0.3, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
}
extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchRequest = searchText
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.searchBar.endEditing(true)
        self.searchBar.resignFirstResponder()
        self.openSearchBar()
    }
}
// Manage Swipe and row animations in tableView
extension ViewController  {
    @objc func handleSwipe(sender: UISwipeGestureRecognizer) {
        changeCategory(direction: sender.direction)
    }
    func changeCategory(direction: UISwipeGestureRecognizerDirection) {
        let isRight = (direction == .right) ? true : false
        let animationDirection = isRight ? UITableViewRowAnimation.right : UITableViewRowAnimation.left
        
        if isRight {
            self.newsManager.currentCategoryIndex += 1
        } else {
            self.newsManager.currentCategoryIndex -= 1
        }
        self.newsManager.currentCategoryIndex = self.newsManager.currentCategoryIndex % self.newsManager.categories.count
        if self.newsManager.currentCategoryIndex < 0 {
            self.newsManager.currentCategoryIndex = self.newsManager.categories.count - 1
        }
        
        self.titleView.category.text = self.newsManager.categories[self.newsManager.currentCategoryIndex % self.newsManager.categories.count]
        
        self.tableView.beginUpdates()
        self.tableView.reloadSections(IndexSet.init(integer: 0), with: animationDirection)
        self.tableView.endUpdates()

        
    }
}
extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if isSearchBarVisible {
            openSearchBar()
        } else {
            if let avc = storyboard?.instantiateViewController(withIdentifier: "Article") as? HCIArticleViewController {
                avc.category = titleView.category.text!
                avc.articleID = indexPath.row
                self.navigationController?.pushViewController(avc, animated: true)
            }
        }
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "HCINewsTableViewCell", for: indexPath) as? HCINewsTableViewCell
        
        let news = self.newsManager.currentNews
        let fakeNews = news[indexPath.row]
        
        let preview = fakeNews.preview
        let title = fakeNews.title
        let author = fakeNews.source
        let date = fakeNews.date
        
        cell?.descriptionLabel.text = preview
        cell?.titleLabel.text = title
        cell?.authorLabel.text = author
        cell?.dateLabel.text = date
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.newsManager.currentNews.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
}

