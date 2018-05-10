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
<<<<<<< HEAD
    case technologie = "Technologie"
=======
    case technologies = "Technologies"
>>>>>>> master
    case sport = "Sport"
    case health = "Health"
    case science = "Science"
    case entertainment = "Entertainment"
<<<<<<< HEAD
}

struct NewsManager {
    var allNews = fakeDataSet
    var currentCategoryIndex = 0
    let categories = [
        "World",
        "Business",
        "Technologie",
        "Sport",
        "Health",
        "Science",
        "Entertainment"
    ]
    var currentNews: [News] {
        get {
            return newsByCategoryIndex()
=======
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
    var currentNews : [News] {
        return categoriesNews[currentCategory]!
    }
    
    init() {
        for article in fakeDataSet {
            categoriesNews[article.category]?.append(article)
>>>>>>> master
        }
    }
    
    func newsBySearch(request: String) -> [News] {
        return currentNews.filter { (news) -> Bool in
            return news.text.range(of: request) != nil || news.preview.range(of: request) != nil || news.title.range(of: request) != nil
        }
<<<<<<< HEAD
        
    }
    
    func newsByCategoryIndex() -> [News] {
        
        return self.allNews.filter { (news) -> Bool in
            return news.category.rawValue == self.categories[self.currentCategoryIndex]
        }
    }
  }


=======
    }
}

//struct NewsManager {
//    var allNews = fakeDataSet
//    var currentCategoryIndex = 0
//    let categories = [
//        "World",
//        "Business",
//        "Technologie",
//        "Sport",
//        "Health",
//        "Science",
//        "Entertainment"
//    ]
//    var currentNews: [News] {
//        get {
//            return newsByCategoryIndex()
//        }
//    }
//
//    func newsBySearch(request: String) -> [News] {
//        return currentNews.filter { (news) -> Bool in
//            return news.text.range(of: request) != nil || news.preview.range(of: request) != nil || news.title.range(of: request) != nil
//        }
//
//    }
//
//    func newsByCategoryIndex() -> [News] {
//
//        return self.allNews.filter { (news) -> Bool in
//            return news.category.rawValue == self.categories[self.currentCategoryIndex]
//        }
//    }
//  }

//
>>>>>>> master
//    func sortByTitle(title:String)->[News]{
//        var sortedByTitle=[News]()
//        for searchedNews in newsArray{
//            if searchedNews.title.range(of:title) != nil { //If the title contains the given substring.
//                sortedByTitle.append(searchedNews)
//            }
//        }
//        return sortedByTitle
//    }
//
//    func sortByText(text:String)->[News]{
//        var sortedByText=[News]()
//        for searchedNews in newsArray{
//            if searchedNews.text.range(of:text) != nil {
//                sortedByText.append(searchedNews)
//            }
//        }
//        return sortedByText
//    }
//
//    func sortByDescription(description:String)->[News]{
//        var sortedByDescription=[News]()
//        for searchedNews in newsArray{
//            if searchedNews.descriptionOfNews.range(of:description) != nil {
//                sortedByDescription.append(searchedNews)
//            }
//        }
//        return sortedByDescription
//    }
//
//    func sortBySource(source:String)->[News]{
//        var sortedBySource=[News]()
//        for searchedNews in newsArray{
//            if searchedNews.source.range(of:source) != nil {
//                sortedBySource.append(searchedNews)
//            }
//        }
//        return sortedBySource
//    }
//
//    func sortByKeywords(keywords:String)->[News]{
//        var sortedByKeywords=[News]()
//        for searchedNews in newsArray{
//            if searchedNews.keywords.range(of:keywords) != nil {
//                sortedByKeywords.append(searchedNews)
//            }
//        }
//        return sortedByKeywords
//    }
//
//
//    func sortByCategory(category:String)->[News]{
//        var sortedByCategory=[News]()
//        for searchedNews in newsArray{
//            if searchedNews.category == category {
//                sortedByCategory.append(searchedNews)
//            }
//        }
//        return sortedByCategory
//    }
//
//    func sortById(id:Int)->[News]{
//        var sortedById=[News]()
//        for searchedNews in newsArray{
//            if searchedNews.id == id {
//                sortedById.append(searchedNews)
//            }
//        }
//        return sortedById
//    }
//
//    func sortByDate(from: Date, to: Date=Date())->[News]{
//        var sortedByDate=[News]()
//        for searchedNews in newsArray{
//            if((searchedNews.date>=from) && (searchedNews.date<=to)){
//                sortedByDate.append(searchedNews)
//            }
//        }
//        return sortedByDate
//    }
//
//    func getLastNews() -> [News]{
//        var sortedLast=[News]()
//        var dateForComparing=newsArray[0].date!
//        for searchedNews in newsArray{
//            if(searchedNews.date>dateForComparing){
//                dateForComparing=searchedNews.date
//            }
//        }
//
//        for searchedNews in newsArray{
//            if(searchedNews.date==dateForComparing){
//                sortedLast.append(searchedNews)
//            }
//        }
//        return sortedLast
//    }
<<<<<<< HEAD
//
=======

>>>>>>> master
