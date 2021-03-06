//
//  News.swift
//  Curiosity
//
//  Created by Vitalii Romanov on 29.04.18.
//  Copyright © 2018 InteractiveNewsExplorer. All rights reserved.
//

import UIKit

class News: NSObject {
    var id: Int
    var title: String
    var preview: String
    var text: String
    var date: String
    var imageName: String
    var source: String
    var sourceLink: String
    var keywords: String
    var category: NewsCategory
    
    //information for toolbar in article view
    var isFollowed: Bool = false
    var notificationsEnabled: Bool = false
    var isLiked: Bool = false
    var isSaved: Bool = false
    var isShared = false
    
    init(id:Int, imageName: String, title:String, category: NewsCategory, preview: String, text: String, source:String, sourceLink: String, keywords:String, date:String){
        
        self.id = id
        self.imageName = imageName
        self.title = title
        self.category = category
        self.preview = preview
        self.text = text
        self.source = source
        self.sourceLink = sourceLink
        self.keywords = keywords
        self.date = date
    }
    
    //method returning states of buttons for toolbar
    func getButtonStates() -> [Bool] {
        var states = [Bool]()
        states.append(isFollowed)
        states.append(notificationsEnabled)
        states.append(isLiked)
        states.append(isSaved)
        states.append(isShared)
        return states
    }

}

