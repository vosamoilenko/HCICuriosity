//
//  HCITitleNavigationBarView.swift
//  Curiosity
//
//  Created by Vo1 on 28.04.18.
//  Copyright © 2018 InteractiveNewsExplorer. All rights reserved.
//

import UIKit


class HCITitleNavigationBarView: UIView {
    @IBOutlet weak var logoLabel: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var menuButton: UIButton!
    var isBackButton = false
    
    var view: UIView!
    let images = [#imageLiteral(resourceName: "menuIcon"), #imageLiteral(resourceName: "iconback")]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    @objc func notify(sender: UIButton) {
        if sender.tag == 0 {
            if !isBackButton {
            NotificationCenter.default.post(Notification.init(name: Notification.Name(rawValue: "menuButtonPressed")))
            } else {
            NotificationCenter.default.post(Notification.init(name: Notification.Name(rawValue: "backButtonPressed")))
            }
        } else if sender.tag == 1 {
            
            NotificationCenter.default.post(Notification.init(name: Notification.Name(rawValue: "searchButtonPressed")))
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func activateBackButton() {
        DispatchQueue.main.async {
            self.menuButton.setImage(self.images[1], for: .normal)
        }
        isBackButton = true
    }
    
    func setup() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = UIViewAutoresizing(rawValue: UIViewAutoresizing.RawValue(UInt8(UIViewAutoresizing.flexibleHeight.rawValue) | UInt8(UIViewAutoresizing.flexibleWidth.rawValue)))
        searchButton.addTarget(self, action: #selector(notify), for: .touchUpInside)
        menuButton.addTarget(self, action: #selector(notify), for: .touchUpInside)
        
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView! {
        let bundle = Bundle.init(for: type(of: self))
        let nib = UINib.init(nibName: "HCITitleNavigationBarView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        return view
    }

}


