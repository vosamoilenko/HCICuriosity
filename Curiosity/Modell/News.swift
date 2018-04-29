//
//  News.swift
//  Curiosity
//
//  Created by Vitalii Romanov on 29.04.18.
//  Copyright © 2018 InteractiveNewsExplorer. All rights reserved.
//

import UIKit

class News: NSObject {
    let id: Int
    let title: String
    let category: String
    let descriptionOfNews: String
    let text: String
    let source: String
    let keywords: String
    //let date: Date
    
    init(id:Int, title:String, category: String, descriptionOfNews: String, text: String, source:String, keywords:String){
        self.id=id
        self.title=title
        self.category=category
        self.descriptionOfNews=descriptionOfNews
        self.text=text
        self.source=source
        self.keywords=keywords
        //self.date=date
    }

}
