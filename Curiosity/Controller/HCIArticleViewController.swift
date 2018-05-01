//
//  HCIArticleViewController.swift
//  Curiosity
//
//  Created by Alina Godun on 30.04.18.
//  Copyright © 2018 InteractiveNewsExplorer. All rights reserved.
//

import UIKit

class HCIArticleViewController: UIViewController {
    @IBOutlet weak var titleView: HCITitleNavigationBarView!
    @IBOutlet weak var toolbar: UIToolbar!
    
    var category = String()
    
    var barButtonItems = [UIBarButtonItem]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.titleView.category.text = category
        initializeToolbar()
    }
    
    func initializeToolbar() {
        let beginningSpace: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        beginningSpace.width = CGFloat(toolbarBeginningSpace)
        let usualSpace : UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        usualSpace.width = CGFloat(toolbarSpace)
        let middleSpace : UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        middleSpace.width = CGFloat(toolbarMiddleSpace)
        
        barButtonItems.append(beginningSpace)
        barButtonItems.append(
            UIBarButtonItem(image: UIImage(named: "followIcon"), style: .plain, target: nil, action: nil)
        )
        barButtonItems.append(usualSpace)
        barButtonItems.append(
            UIBarButtonItem(image: UIImage(named: "notificationIcon"), style: .plain, target: nil, action: nil)
        )
        barButtonItems.append(middleSpace)
        barButtonItems.append(
            UIBarButtonItem(image: UIImage(named: "saveIcon"), style: .plain, target: nil, action: nil)
        )
        barButtonItems.append(usualSpace)
        barButtonItems.append(
            UIBarButtonItem(image: UIImage(named: "shareIcon"), style: .plain, target: nil, action: nil)
        )
        
        for barButton in barButtonItems {
            barButton.tintColor = UIColor.darkGray
        }
        toolbar.items = barButtonItems
    }
}
