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
    var imageURL: URL
    var source: String
<<<<<<< HEAD
    var keywords: String
    var category: NewsCategory
    
    // For @Alina
    var isFavorite: Bool = false
    
    init(id:Int, imageURL: URL, title:String, category: NewsCategory, preview: String, text: String, source:String, keywords:String, date:String){
=======
    var sourceLink: String
    var keywords: String
    var category: NewsCategory
    
    var isFollowed: Bool = false
    var notificationsEnabled: Bool = false
    var isLiked: Bool = false
    var isSaved: Bool = false
    var isShared = false
    
    init(id:Int, imageURL: URL, title:String, category: NewsCategory, preview: String, text: String, source:String, sourceLink: String, keywords:String, date:String){
>>>>>>> master
        
        self.id = id
        self.imageURL = imageURL
        self.title = title
        self.category = category
        self.preview = preview
        self.text = text
        self.source = source
<<<<<<< HEAD
        self.keywords = keywords
        self.date = date
=======
        self.sourceLink = sourceLink
        self.keywords = keywords
        self.date = date
    }
    
    func getButtonStates() -> [Bool] {
        var states = [Bool]()
        states.append(isFollowed)
        states.append(notificationsEnabled)
        states.append(isLiked)
        states.append(isSaved)
        states.append(isShared)
        return states
>>>>>>> master
    }

}

