//
//  HTMLHelper.swift
//  Curiosity
//
//  Created by Alina Godun on 03.05.18.
//  Copyright © 2018 InteractiveNewsExplorer. All rights reserved.
//

import Foundation

struct HTMLHelper {
    let htmlBeginning: String
    let htmlEnding: String
    
    let htmlBeginningTags = ["<html>",
                             "<head>",
                             "<meta name=\"viewport\" content=\"initial-scale=1\">",
                             "<style>",
                             "#title { text-align: center; font-size: 110%; margin: 3%}",
                             "#source { text-align: center; font-size: 75%; }",
                             "#title, #description { font-weight: 500; }",
                             "#text, #description { text-align: justify; font-size: 90%; }",
                             "#text, #source, #description { margin: 5%; }</style>",
                             "</head>",
                             "<body>",
                             "<font face = \"Avenir\">"]
    let htmlEndingTags = ["</font>",
                          "</body>",
                          "</html>"]
    
    init() {
        htmlBeginning = htmlBeginningTags.joined()
        htmlEnding = htmlEndingTags.joined()
    }
    
    func parseTextIntoParagraphs(text: String) -> String {
        let textParagraphs = text.components(separatedBy: "\n");
        
        var text = "<div id = text>";
        for paragraph in textParagraphs {
            text  += "<p>" + paragraph + "</p>"
        }
        text += "</div>"
        
        return text
    }
    
    func convertToHTMLString(news article: News) -> String {
        func getHTMLFor(id: String, element: String) -> String {
            return "<p><div id = \(id)><p>" + element + "</div></p>"
        }
        
        var html = String(htmlBeginning)
//        should work
        html += "<img src=\"https://www.theatlantic.com/science/archive/2018/04/searching-the-arctic-seas-for-lifesaving-drugs/557231/\" width = 360>"
//        should load nothing
        html += "<img src=\"www.theatlantic.com/science/archive/2018/04/searching-the-arctic-seas-for-lifesaving-drugs/557231/\" width = 360>"
        html += getHTMLFor(id: "title", element: article.title)
        html += getHTMLFor(id: "source", element: article.source)
        html += getHTMLFor(id: "description", element: article.preview)
        html += parseTextIntoParagraphs(text: article.text)
        html += htmlEnding
        return html
    }
}
