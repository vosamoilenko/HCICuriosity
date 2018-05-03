//
//  News.swift
//  Curiosity
//
//  Created by Vitalii Romanov on 29.04.18.
//  Copyright © 2018 InteractiveNewsExplorer. All rights reserved.
//

import UIKit

class News: NSObject {
    let id: Int!
    let mainPic: String!
    let title: String!
    let category: String!
    let descriptionOfNews: String!
    let text: String!
    let source: String!
    let keywords: String!
    let date: Date!
    
    init(id:Int, mainPicture: String,  title:String, category: String, descriptionOfNews: String, text: String, source:String, keywords:String, date:String){
        self.id=id
        self.mainPic = mainPicture
        self.title=title
        self.category=category
        self.descriptionOfNews=descriptionOfNews
        self.text=text
        self.source=source
        self.keywords=keywords
        
        let formatter = DateFormatter()
        formatter.timeZone=TimeZone(abbreviation: "GMT")
        formatter.dateFormat = "dd.MM.yyyy"
        let someDateTime = formatter.date(from: date)
        self.date=someDateTime
    }

}
