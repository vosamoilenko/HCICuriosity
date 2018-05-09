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
    var isSearched:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.delegate = self
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        self.searchBar.placeholder = "Search by category"
        
        setDelegates()
        
        let nib = UINib(nibName: "HCINewsTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "HCINewsTableViewCell")
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 44
        
        self.titleView.category.text = self.newsManager.currentCategoryName
        
        self.leftSwipeRecognizer.addTarget(self, action: #selector(handleSwipe))
        self.rightSwipeRecognizer.addTarget(self, action: #selector(handleSwipe))
        
        setObservers()
    }
    fileprivate func setObservers() {
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
    fileprivate func setDelegates() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.searchBar.delegate = self
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if isSearchBarVisible {
            openSearchBar()
        }
    }
}
// actions for TitleView
extension ViewController {
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
        
        if !searchRequest.isEmpty {
            isSearched = true
        } else {
            isSearched = false
        }
        
        self.searchBar.endEditing(true)
        self.searchBar.resignFirstResponder()
        self.openSearchBar()
        self.tableView.reloadSections(IndexSet.init(integer: 0), with: .fade)
    }
}
// Manage Swipe and row animations in tableView
extension ViewController  {
    @objc func handleSwipe(sender: UISwipeGestureRecognizer) {
        changeCategory(direction: sender.direction)
    }
    func changeCategory(direction: UISwipeGestureRecognizerDirection) {
        searchRequest = ""
        isSearched = false
        let isRight = (direction == .right) ? true : false
        let animationDirection = isRight ? UITableViewRowAnimation.right : UITableViewRowAnimation.left
        
        if isRight {
            self.newsManager.currentCategoryIndex += 1
        } else {
            self.newsManager.currentCategoryIndex -= 1
        }
        self.newsManager.currentCategoryIndex = self.newsManager.currentCategoryIndex % self.newsManager.categoriesNames.count
        if self.newsManager.currentCategoryIndex < 0 {
            self.newsManager.currentCategoryIndex = self.newsManager.categoriesNames.count - 1
        }
        
        self.titleView.category.text = self.newsManager.categoriesNames[self.newsManager.currentCategoryIndex % self.newsManager.categoriesNames.count]
        
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
                avc.article = newsManager.currentNews[indexPath.row]
                avc.newsManager = newsManager
                self.navigationController?.pushViewController(avc, animated: true)
            }
        }
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "HCINewsTableViewCell", for: indexPath) as? HCINewsTableViewCell
        
        var news: [News]
        var article: News
        
        if isSearched {
            news = self.newsManager.newsBySearch(request: searchRequest)
        } else {
            news = self.newsManager.currentNews
        }
        article = news[indexPath.row]
        
        let preview = article.preview
        let title = article.title
        let author = article.source
        let date = article.date
        
        cell?.descriptionLabel.text = preview
        cell?.titleLabel.text = title
        cell?.authorLabel.text = author
        cell?.dateLabel.text = date
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isSearched {
            return self.newsManager.newsBySearch(request: searchRequest).count
        } else {
            return self.newsManager.currentNews.count
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
}

