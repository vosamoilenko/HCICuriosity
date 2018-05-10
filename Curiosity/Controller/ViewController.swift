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
    
<<<<<<< HEAD:Curiosity/Controller/ViewController.swift
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.delegate = self
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        setDelegates()
        
        let nib = UINib(nibName: "HCINewsTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "HCINewsTableViewCell")
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 44
        
        self.titleView.category.text = self.newsManager.categories[self.newsManager.currentCategoryIndex]
        
=======
    fileprivate func addingTargets() {
>>>>>>> master:Curiosity/Controller/ViewController.swift
        self.leftSwipeRecognizer.addTarget(self, action: #selector(handleSwipe))
        self.rightSwipeRecognizer.addTarget(self, action: #selector(handleSwipe))
    }
    
    fileprivate func preapreTableViewAndCells() {
        let nib = UINib(nibName: "HCINewsTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "HCINewsTableViewCell")
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 44
        self.titleView.category.text = self.newsManager.currentCategoryName
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        self.searchBar.placeholder = "Search by category"
        
<<<<<<< HEAD:Curiosity/Controller/ViewController.swift
        setObservers()
    }
=======
        preapreTableViewAndCells()
        setDelegates()
        addingTargets()
        setObservers()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.tableView.reloadSections(IndexSet.init(integer: 0), with: .fade)
    }
    
    // Set observers for Observe pressing and events from HCITitleNavigationBarView
>>>>>>> master:Curiosity/Controller/ViewController.swift
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
<<<<<<< HEAD:Curiosity/Controller/ViewController.swift
    fileprivate func setDelegates() {
=======
    // Set delegate for UIElements
    fileprivate func setDelegates() {
        self.navigationController?.delegate = self
>>>>>>> master:Curiosity/Controller/ViewController.swift
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.searchBar.delegate = self
    }
<<<<<<< HEAD:Curiosity/Controller/ViewController.swift
=======
    //Detect touches
>>>>>>> master:Curiosity/Controller/ViewController.swift
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if isSearchBarVisible {
            openSearchBar()
        }
    }
}
// actions for TitleView
<<<<<<< HEAD:Curiosity/Controller/ViewController.swift
=======
// The whole extension is for separating actions methods
>>>>>>> master:Curiosity/Controller/ViewController.swift
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
    func updateTable(_ animationDirection: UITableViewRowAnimation) {
        self.tableView.beginUpdates()
        self.tableView.reloadSections(IndexSet.init(integer: 0), with: animationDirection)
        self.tableView.endUpdates()
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
<<<<<<< HEAD:Curiosity/Controller/ViewController.swift
        self.newsManager.currentCategoryIndex = self.newsManager.currentCategoryIndex % self.newsManager.categories.count
        if self.newsManager.currentCategoryIndex < 0 {
            self.newsManager.currentCategoryIndex = self.newsManager.categories.count - 1
        }
        
        self.titleView.category.text = self.newsManager.categories[self.newsManager.currentCategoryIndex % self.newsManager.categories.count]
        
        self.tableView.beginUpdates()
        self.tableView.reloadSections(IndexSet.init(integer: 0), with: animationDirection)
        self.tableView.endUpdates()
=======
        self.newsManager.currentCategoryIndex = self.newsManager.currentCategoryIndex % self.newsManager.categoriesNames.count
        if self.newsManager.currentCategoryIndex < 0 {
            self.newsManager.currentCategoryIndex = self.newsManager.categoriesNames.count - 1
        }
        
        self.titleView.category.text = self.newsManager.categoriesNames[self.newsManager.currentCategoryIndex % self.newsManager.categoriesNames.count]
        
        updateTable(animationDirection)
>>>>>>> master:Curiosity/Controller/ViewController.swift
    }
}
extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if isSearchBarVisible {
            openSearchBar()
        } else {
            if let avc = storyboard?.instantiateViewController(withIdentifier: "Article") as? HCIArticleViewController {
                avc.category = titleView.category.text!
<<<<<<< HEAD:Curiosity/Controller/ViewController.swift
                avc.articleID = indexPath.row
=======
                avc.article = newsManager.currentNews[indexPath.row]
                avc.newsManager = newsManager
                avc.prevVC = self
>>>>>>> master:Curiosity/Controller/ViewController.swift
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
<<<<<<< HEAD:Curiosity/Controller/ViewController.swift
        
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
        
=======
        
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
        
>>>>>>> master:Curiosity/Controller/ViewController.swift
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

