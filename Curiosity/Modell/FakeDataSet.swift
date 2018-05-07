//
//  FakeDataSet.swift
//  Curiosity
//
//  Created by Vo1 on 05.05.18.
//  Copyright © 2018 InteractiveNewsExplorer. All rights reserved.
//

import Foundation

let fakeDataSet = [
    News(
        id: 0,
        imageURL: URL.init(string: "https://e3.365dm.com/18/03/2048x1536/skynews-putin-vladimir-russia_4260694.jpg?20180320201520")!,
        title: "'More than 1,200' arrested as anti-Putin protests held across Russia",
        category: .world,
        preview: "Protests against Vladimir Putin have taken place across Russia ahead of his inauguration for a fourth presidential term, with more than 1,200 people arrested.",
        text: """
            Police removed Russian opposition leader Alexei Navalny from a rally in Moscow's Pushkin Square, carrying him off by his arms and legs.

            Officers used batons against protesters, with many in the crowd chanting "Putin is a thief!" and "Russia will be free!"

            Part of St Petersburg's famous avenue Nevsky Prospekt was blocked off by police as a crowd of roughly 1,000 demonstrators marched through the city.

            The country's interior ministry said about half of the 1,200 arrests happened in Moscow, but monitoring group OVD-Info put the number at more than 1,600 across 20 cities.

            Mr Putin's critics say he is more of a tsar than a democratic leader.

            Mr Navalny, who has been repeatedly detained and jailed for organising protests, published a message ahead of the marches saying: "If you think that he is not our tsar, take to the streets of your cities.

            "We will force the authorities, made up of swindlers and thieves, to reckon with the millions of citizens who did not vote for Putin."

            Mr Navalny called for rallies in more than 90 towns and cities, including   Moscow and St Petersburg.

            A Twitter account supporting Mr Navalny posted images from the protests, showing a stream of people waving Russian flags and carrying red balloons.

            The authorities regard most of the protests as illegal, arguing that their time and place was not agreed with them beforehand.

            One activist told a crowd in the city of Khabarovsk: "Putin has already been on his throne for 18 years! We've ended up in a dead end over these 18 years. I don't want to put up with this!"

            Mr Putin, 65, was re-elected in a landslide victory in March - extending his grip over the world's largest country until 2024. He will be inaugurated on Monday.

            He has been in power, either as president or prime minister, since 2000.

            His victory makes him the longest-lasting leader since Soviet dictator Joseph Stalin, who ruled for nearly 30 years.
            """,
        source: "SkyNews", keywords: "Putin Russia Novalny", date: "05.05.2018"),
    News(
        id: 1,
        imageURL: URL.init(string: "https://ichef-1.bbci.co.uk/news/660/cpsprodpb/11799/production/_101177517_mediaitem101177516.jpg")!,
        title: "Apple shares hit all-time high after Buffett raises stake",
        category: .technologies,
        preview: "Apple shares have hit an all-time high on news that legendary investor Warren Buffett now has a roughly 5% stake in the tech giant.",
        text: """
            Shares in Apple, already the world's most valuable company, rose by almost 4% on Friday to more than $183.7 each.
            Mr Buffett said his Berkshire Hathaway group bought about 75 million more shares of the iPhone maker in the first three months of the year.
            His investment moves are closely watched across the world.
            Mr Buffett's company has been buying up shares in Apple since 2016. Berkshire Hathaway claimed a nearly 3.3% stake, or more than 166 million shares, at the end of last year.
            At the time, the holding, one of Berkshire's biggest stock market gambits, was worth more than $28bn.
            Now, after the additional share purchases and an 8% rise in price since the start of the year, the firm's stake is worth more than $44bn.
            Apple's market value now stands at almost $932bn.
            "It is an unbelievable company," Mr Buffett said in an interview with CNBC. "If you look at Apple, I think it earns almost twice as much as the second most profitable company in the United States."
            Some analysts have worried the technology giant's best days are behind it, as competition in the smart phone market increases and sales growth slows.
            But the company has been building up other lines of business, including the services unit that includes the App Store, Apple Music and Apple Pay.
            Apple this week reported profit of $13.8bn in the first three months of the year, rising 25% from the same period in 2017.
            The company also has a generous share buyback and dividend programme that is expanding.
            Apple, citing new US tax cuts, this week said it would buy back $100bn worth of shares and increase its dividend.
            The moves, which return money to its shareholders, had been widely anticipated in the aftermath of the new tax law, which lowered the corporate tax rate and reduced the incentives for firms to hoard cash overseas.
            Berkshire Hathaway will host its annual meeting for shareholders in Omaha, Nebraska this weekend.
            """,
        source: "BBC", keywords: "Apple Buffett Nebraska", date: "04.05.2018"),
    News(
        id: 1,
        imageURL: URL.init(string: "https://ichef.bbci.co.uk/news/660/cpsprodpb/14DEF/production/_101178458_5eba6389-3a4c-4ac7-8fee-6c5348b2bc03.jpg")!,
        title: "Air France-KLM boss quits as staff reject pay deal",
        category: .technologies,
        preview: "Air France-KLM chief Jean-Marc Janaillac has announced his resignation after French staff at the strike-hit airline rejected a new pay deal.",
        text: """
            "I accept the consequences of this vote and will tender my resignation to the boards of Air France and Air France-KLM in coming days," he said.
            In a ballot, 55% of the French employees rejected the deal.
            Air France-KLM - one of Europe's biggest airlines - has seen a series of strikes in recent weeks.
            The industrial action has cost the Franco-Dutch alliance millions of euros.
            In the ballot, company employees rejected a 7% pay rise over the next four years.
            They have been demanding a 5.1% increase in 2018 instead - in a dispute that began in February.

            "This is an enormous mess that will only put a smile on the faces of our competitors," Mr Janaillac told a news conference.
            He said he hoped his departure would spark "a more acute collective awareness" before leaving without taking questions.
            The 65-year-old chief executive, who had been in the job for less than two years, earlier promised to quit if the pay deal was rejected.
            He had been trying to cut costs at the company, amid rising competition from low-cost airlines and Gulf national carriers.
            He will officially resign next Wednesday, Air France-KLM said.
            'Pain'
            Meanwhile, the company's unions said further strikes would be staged in the coming days.
            Air France-KLM has already downgraded its profit and growth expectations for 2018.
            Air France and KLM merged in 2004. They transport tens of millions of passengers around the world every year.
            Labour reforms launched by French President Emmanuel Macron have also led to strikes by employees of the state-owned SNCF rail company.
            British Airways and Lufthansa have already undergone deep cost-cutting in recent years, and some analysts say Air France has lagged behind.
            "There is inevitably some pain for staff when structural changes are made, but once that is dealt with, you're left with a much healthier company," said aviation consultant John Strickland.
            "That has been proved in the cases of the turnarounds achieved by Iberia and British Airways."
            """,
        source: "BBC", keywords: "AirFrance Strike", date: "04.05.2018")
]
