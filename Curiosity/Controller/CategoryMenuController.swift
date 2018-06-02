//
//  CategoryMenuController.swift
//  Curiosity
//
//  Created by Alina Godun on 02.06.18.
//  Copyright © 2018 InteractiveNewsExplorer. All rights reserved.
//

import UIKit

class CategoryMenuController: UIViewController, UITableViewDelegate {
    @IBOutlet weak var titleView: HCITitleNavigationBarView!
    @IBOutlet weak var tableView: UITableView!
    
    var newsManager : NewsManager!
    var prevVC: ViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.titleView.category.text = "Categories"
        self.titleView.searchButton.isHidden = true

        setObservers()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    fileprivate func setObservers() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(closeMenuView),
            name: Notification.Name("menuButtonPressed"),
            object: nil)
    }
    
    @objc func closeMenuView() {
        prevVC.isRoot = true
        self.navigationController?.popToRootViewController(animated: true)
    }
}

extension CategoryMenuController {
    internal func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        newsManager.currentCategoryIndex = indexPath.row
        prevVC.isRoot = true
        prevVC.titleView.category.text = newsManager.categoriesNames[indexPath.row]
        self.navigationController?.popToRootViewController(animated: true)
    }
}

extension CategoryMenuController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsManager.categoriesNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = newsManager.categoriesNames[indexPath.row]
        if (indexPath.row == newsManager.currentCategoryIndex) {
            cell.textLabel?.font = UIFont.boldSystemFont(ofSize: (cell.textLabel?.font.pointSize)!)
            
        }
        return cell
    }
}
