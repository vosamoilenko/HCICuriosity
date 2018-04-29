//
//  NewsController.swift
//  Curiosity
//
//  Created by Vitalii Romanov on 29.04.18.
//  Copyright © 2018 InteractiveNewsExplorer. All rights reserved.
//
import UIKit

class NewsController: NSObject {
    var newsArray = [News]()
    
    func sortByTitle(title:String)->[News]{
        var sortedByTitle=[News]()
        for searchedNews in newsArray{
            if searchedNews.title.range(of:title) != nil { //If the title contains the given substring.
                sortedByTitle.append(searchedNews)
            }
        }
        return sortedByTitle
    }
    
    func sortByText(text:String)->[News]{
        var sortedByText=[News]()
        for searchedNews in newsArray{
            if searchedNews.text.range(of:text) != nil {
                sortedByText.append(searchedNews)
            }
        }
        return sortedByText
    }
    
    func sortByDescription(description:String)->[News]{
        var sortedByDescription=[News]()
        for searchedNews in newsArray{
            if searchedNews.descriptionOfNews.range(of:description) != nil {
                sortedByDescription.append(searchedNews)
            }
        }
        return sortedByDescription
    }
    
    func sortBySource(source:String)->[News]{
        var sortedBySource=[News]()
        for searchedNews in newsArray{
            if searchedNews.source.range(of:source) != nil {
                sortedBySource.append(searchedNews)
            }
        }
        return sortedBySource
    }
    
    func sortByKeywords(keywords:String)->[News]{
        var sortedByKeywords=[News]()
        for searchedNews in newsArray{
            if searchedNews.keywords.range(of:keywords) != nil {
                sortedByKeywords.append(searchedNews)
            }
        }
        return sortedByKeywords
    }
    
    
    func sortByCategory(category:String)->[News]{
        var sortedByCategory=[News]()
        for searchedNews in newsArray{
            if searchedNews.category == category {
                sortedByCategory.append(searchedNews)
            }
        }
        return sortedByCategory
    }
    
    func sortById(id:Int)->[News]{
        var sortedById=[News]()
        for searchedNews in newsArray{
            if searchedNews.id == id {
                sortedById.append(searchedNews)
            }
        }
        return sortedById
    }
    
}
