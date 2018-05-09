//
//  CuriosityTests.swift
//  CuriosityTests
//
//  Created by Vitalii Romanov on 29.04.18.
//  Copyright © 2018 InteractiveNewsExplorer. All rights reserved.
//

import XCTest
@testable import Curiosity
class CuriosityTests: XCTestCase {
    // Specify date components
    // Initialize Date components
//    let controller=NewsManager()
//
//    let firstNews=News(id: 1, title: "My title about Basketball", category: "Sport", descriptionOfNews: "Basketball play...", text: "Text about Basketball", source: "Vitalii Romanov", keywords: "sport, bastatball", date:"20.05.2017")
//
//    let secondNews=News(id: 2, title: "Trup plays!", category: "Politics", descriptionOfNews: "Trump plays a short game", text: "Text about Trump", source: "Olga", keywords: "politics, Trump", date:"21.04.2018")
//
//    let thirdNews=News(id: 3, title: "My title about Health", category: "Health", descriptionOfNews: "Health is important", text: "Text about how health important is", source: "Maxim", keywords: "health, important", date:"29.04.2018")
//
//
//    var newsArray = [News]()
//
//    override func setUp() {
//        super.setUp()
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//        newsArray.append(firstNews)
//        newsArray.append(secondNews)
//        newsArray.append(thirdNews)
//        controller.newsArray=newsArray
//    }
//
//    override func tearDown() {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//        super.tearDown()
//    }
//    func testSortByTitle() {
//        let sortedArray=controller.sortByTitle(title: "My")
//        print("________________________________")
//        print("Number of elements \(sortedArray.count)")
//        for news in sortedArray{
//            print(news.title)
//            print(news.date.description)
//        }
//        print("________________________________")
//        XCTAssert(sortedArray.count==2, "Wrong Title")
//    }
//
//    func testSortByText(){
//        let sortetArray=controller.sortByText(text:"about Basketball")
//        XCTAssert(sortetArray.count==1, "Wrong Text")
//        print("________________________________")
//        print("Text \(sortetArray[0].text)")
//        print("________________________________")
//    }
//
//    func testSortByDate(){
//        let formatter = DateFormatter()
//        formatter.timeZone=TimeZone(abbreviation: "GMT")
//        formatter.dateFormat = "dd.MM.yyyy"
//        let fromDate=formatter.date(from: "21.04.2018")!
//        let toDate=formatter.date(from: "25.04.2018")!
//
//        let sortedArray=controller.sortByDate(from: fromDate, to: toDate)
//        print("_________Data Test_________________")
//        for news in sortedArray{
//            print(news.title)
//            print(news.date.description)
//        }
//        print("_____________________________________")
//        XCTAssert(sortedArray.count==1, "Wrong date Sorting")
//
//    }
//
//    func testSortByDate2(){
//        let formatter = DateFormatter()
//        formatter.timeZone=TimeZone(abbreviation: "GMT")
//        formatter.dateFormat = "dd.MM.yyyy"
//        let fromDate=formatter.date(from: "21.04.2018")!
//
//        let sortedArray = controller.sortByDate(from: fromDate)
//        print("_________Data Test2,_________________")
//        for news in sortedArray{
//            print(news.title)
//            print(news.date.description)
//        }
//        print("_____________________________________")
//        XCTAssert(sortedArray.count==2, "Wrong date Sorting")
//
//    }
//
//    func testLastNews(){
//        let sortedArray=controller.getLastNews()
//        print("_________________Last News_____________")
//        for news in sortedArray{
//            print(news.title)
//        }
//        print("______________________________________")
//
//        XCTAssert(sortedArray.count==1, "Wrong Last News Sorting")
//
//    }
    
    
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
