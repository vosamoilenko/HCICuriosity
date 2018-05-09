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
    var keywords: String
    var category: NewsCategory
    
    // For @Alina
    var isFavorite: Bool = false
    
    init(id:Int, imageURL: URL, title:String, category: NewsCategory, preview: String, text: String, source:String, keywords:String, date:String){
        
        self.id = id
        self.imageURL = imageURL
        self.title = title
        self.category = category
        self.preview = preview
        self.text = text
        self.source = source
        self.keywords = keywords
        self.date = date
    }

}

