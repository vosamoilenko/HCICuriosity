//
//  Constants.swift
//  Curiosity
//
//  Copyright © 2018 InteractiveNewsExplorer. All rights reserved.
//

import Foundation
import UIKit


enum NewsCategory: String {
    case world = "World"
    case business = "Business"
    case technologie = "Technologie"
    case sport = "Sport"
    case health = "Heakth"
    case science = "Science"
    case entertainment = "Entertainment"
}

let categoryArr = [
    "World",
    "Business",
    "Technologie",
    "Sport",
    "Health",
    "Science",
    "Entertainment"
]

//Article View Constants
//Toolbar constants
var toolbarBeginningSpace = 15
var toolbarSpace = 40

let defaultColor = UIColor.darkGray

//fake data for article view
//@Alina
    let fakeArticleLink = "http://fakearticle.com/article/234562/"
    let fakeID = 1002;
    let fakeCategory = "Politics"
    let fakeKeywords = "Weapon, Politics, Guardian"
    let fakeDate = "25.04.2018"
    let fakeArticlePicLink = "https://i.guim.co.uk/img/media/a376f1d97b093e82feedd57c28e70d97e4279546/0_309_4480_2688/master/4480.jpg?w=620&q=20&auto=format&usm=12&fit=max&dpr=2&s=448ff5add45841670938be6aa41c997d"
    let fakeTitle = "Why are chemical weapons worse than other weapons of mass destruction?"
    let fakeSource = "William Schabas, The Guardian"
    let fakeDescription = "The outrage of nuclear-armed countries at their use in Syria has the whiff of hypocrisy."
//    let fakeText = "When the British, French and American governments used force against Syria earlier this month, they claimed they were acting to ensure respect for international law. Yet the use of force without the authorisation of the United Nations security council is contrary to the charter of the UN. There is something bewildering about violating international law in order to promote the enforcement of international law. If there is a taboo on the use of chemical weapons, why is there not also a taboo on the unilateral use of armed force, contrary to international law? Does one taboo trump the other?<p>That three nuclear powers express outrage about inhumane weapons has a ring of cynicism. Their conduct recalls that of tobacco companies howling about the health dangers of electronic cigarettes. Although couched in humanitarian language, the real motives of the United States, France and Britain may have more to do with protecting a monopoly on weapons of terror.</p><p>The use of chemical weapons in the Syrian civil war appears to be occasional and somewhat isolated, rather than systematic. In a conflict responsible for the deaths of 500,000 people, most of them civilians, the casualties from chemical weapons probably number in the hundreds. The use of chemical weapons is hardly the only serious violation of international humanitarian law to feature in the conflict.</p><p>Many categories of weapons are prohibited by specific treaties and declarations that form part of international law. The earliest such rule dates back exactly 150 years. The St Petersburg Declaration of 1868 condemned the use of exploding bullets. The pre-first world war Hague Conventions established that “the right of belligerents to adopt means of injuring the enemy is not unlimited”. They expressly prohibit “poison or poisoned arms”. After the 1914-18 war, British government lawyers prepared criminal charges against Kaiser Wilhelm II for the use of poison gas and “liquid fire” by German forces. A century later, lists of prohibited weapons include asphyxiating gas, cluster munitions, anti-personnel mines and blinding laser weapons."
//let fakeNews = News(id: 1002, mainPicture: fakeArticlePicLink, title: fakeTitle, category: fakeCategory, descriptionOfNews: fakeDescription, text: fakeText, source: fakeSource, keywords: fakeKeywords, date: fakeDate)

// This fake data I used for working on my screen
// @Volodymyr

//var cat = [
//    "sport",
//    "health",
//    "science",
//    "fashion",
//    "business",
//    "politics"
//]

//var tit = [
//    "Man accused of killing Maine police officer arrested, ending 4-day manhunt",
//    "Trump and South Korean President Moon talk ahead of North Korea meeting",
//    "CNN reporter follows a caravan of migrants",
//    "Immigrant caravan arrives in Tijuana - CNN Video",
//    "Donald Trump calls for Jon Tester to resign over Jackson opposition",
//    "A migrant mom's diary of 3,000 hellish miles",
//    "Joy Reid apologizes and says experts haven't proven she was hacked"
//]

//var decr = [
//    "Police in central Maine have arrested a man accused of killing a police officer this week, ending a four-day manhunt, a sheriff said Saturday afternoon.",
//    "President Donald Trump says he spoke with his Japanese and South Korean counterparts Saturday morning about his upcoming sit-down with North Korean leader Kim Jong Un.",
//    "CNN's Leyla Santiago is in Puebla, Mexico, tracking the caravan of Central American migrants that drew the attention of the President.",
//    "Hundreds of migrants from Central America have made it to Tijuana, Mexico, some with the intention of crossing into the United States and asking for asylum. CNN's Leyla Santiago traveled with the caravan, and shared their stories.",
//    "President Donald Trump on Saturday morning called for Montana Democratic Sen. Jon Tester to resign over his opposition to White House physician Ronny Jackson's nomination for secretary of veterans affairs, saying some of the allegations against Jackson \"are p…",
//    "Pregnant Gabriela Hernandez flees Honduras with her two young sons. Through Mexico, she survives sickness, a trash train and 3,000 miles in a search for safety.",
//    "Joy Reid distanced herself from bizarre claims that her former blog was hacked and she didn't author homophobic tweets."
//]
//
//var auth = [
//    "Jason Hanna and Shawn Nottingham, CNN",
//    "Sophie Tatum",
//    "Matt Korade",
//    "Leyla Santiago and Khushbu Shah, CNN",
//    "Jackie Wattles and Tom Kludt",
//    "Tal Kopan, CNN",
//    "Patricia DiCarlo",
//]
//var dat = [
//    "26.04.2018",
//    "22.04.2018",
//    "24.04.2018",
//    "21.04.2018",
//    "20.04.2018",
//    "23.04.2018",
//    "22.04.2018"
//]

