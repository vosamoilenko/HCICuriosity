//
//  ViewController.swift
//  Curiosity
//
//  Created by Vo1 on 29.04.18.
//  Copyright © 2018 InteractiveNewsExplorer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var titleView: HCITitleNavigationBarView!
    @IBOutlet var rightSwipeRecognizer: UISwipeGestureRecognizer!
    @IBOutlet var leftSwipeRecognizer: UISwipeGestureRecognizer!
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var topConstrain: NSLayoutConstraint!
    
    
    
    var categoryIndex = 0
    var isSearchBarVisible = false
    var isMenuBarVisible = false
    var searchRequest: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.searchBar.delegate = self
        
        let nib = UINib(nibName: "HCINewsTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "HCINewsTableViewCell")
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 44
        
        self.titleView.category.text = cat[categoryIndex]
        
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
        print(searchRequest)
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
            categoryIndex += 1
        } else {
            categoryIndex -= 1
        }
        if categoryIndex < 0 {categoryIndex = cat.count - 1}
        self.titleView.category.text = cat[categoryIndex%6]
        
        var arr = [IndexPath]()
        for var i in decr.indices {
            arr.append(IndexPath.init(row: i, section: 0))
        }
        self.tableView.reloadRows(at: arr, with: animationDirection)
    }
}
extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if isSearchBarVisible {
            openSearchBar()
        }
    }
}
extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "HCINewsTableViewCell", for: indexPath) as? HCINewsTableViewCell
        
        let description = decr[indexPath.row]
        let title = tit[indexPath.row]
        let author = auth[indexPath.row]
        let date = dat[indexPath.row]
        
        cell?.descriptionLabel.text = description
        cell?.titleLabel.text = title
        cell?.authorLabel.text = author
        cell?.dateLabel.text = date
        
        
        return cell!
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return decr.count;
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
}
