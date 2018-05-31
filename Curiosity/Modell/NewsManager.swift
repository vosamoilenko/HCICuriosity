//
//  NewsController.swift
//  Curiosity
//
//  Created by Vitalii Romanov on 29.04.18.
//  Copyright © 2018 InteractiveNewsExplorer. All rights reserved.
//
import UIKit

enum NewsCategory: String {
    case world = "World"
    case business = "Business"
    case technologies = "Technologies"
    case sport = "Sport"
    case health = "Health"
    case science = "Science"
    case entertainment = "Entertainment"
    case recommended = "Recommended"
    case favourites = "Favourites"
}

class NewsManager {
    var categoriesNews = [
        NewsCategory.world : [News](),
        NewsCategory.business : [News](),
        NewsCategory.technologies : [News](),
        NewsCategory.sport : [News](),
        NewsCategory.health : [News](),
        NewsCategory.science : [News](),
        NewsCategory.entertainment : [News](),
        NewsCategory.recommended : [News](),
        NewsCategory.favourites : [News](),
    ]
    let categoriesNames = [
        "World",
        "Business",
        "Technologies",
        "Sport",
        "Health",
        "Science",
        "Entertainment",
        "Recommended",
        "Favourites",
    ]
    
    var currentCategoryIndex = 0
    var currentCategoryName : String {
        return categoriesNames[currentCategoryIndex]
    }
    var currentCategory : NewsCategory {
        return NewsCategory.init(rawValue: currentCategoryName)!
    }
    
    init() {
        for article in fakeDataSet {
            categoriesNews[article.category]?.append(article)
        }
    }
    
    var currentNews : [News] {
        return categoriesNews[currentCategory]!
    }
    
    func newsBySearch(request: String) -> [News] {
        return currentNews.filter { (news) -> Bool in
            return news.text.lowercased().range(of: request.lowercased()) != nil || news.preview.lowercased().range(of: request.lowercased()) != nil || news.title.lowercased().range(of: request.lowercased()) != nil
        }
    }
}
