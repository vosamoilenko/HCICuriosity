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
        category: .technologie,
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
        category: .technologie,
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
        source: "BBC", keywords: "AirFrance Strike", date: "04.05.2018"),
    //________________________________________Sport Data Set____________________________________________
    News(
        id: 3,
        imageURL: URL.init(string: "https://ichef.bbci.co.uk/onesport/cps/800/cpsprodpb/4FC7/production/_101232402_serena_getty.jpg")!,
        title: "Italian Open: Serena Williams withdraws from clay-court tournament",
        category: .sport,
        preview: "Serena Williams has withdrawn from this month's Italian Open, five days after opting out of the WTA event in Madrid.",
        text: """
            The decision puts in doubt her participation at the French Open, which begins on 27 May.

            Williams is a four-time winner of the Rome event, which takes place from 14-20 May.

            She withdrew from the Madrid Open on Thursday, saying she needs more time to prepare for her first clay season since giving birth in September.

            The 23-time Grand Slam champion has not played a match on clay since reaching the final at Roland Garros in 2016.

            She returned to the WTA Tour in March and reached the third round at Indian Wells, where she was beaten by sister Venus, before falling in the first round of the Miami Open to Japan's Naomi Osaka.
            """,
        source: "BBC", keywords: "Tennis Serena Williams Madrid", date:"09.05.2018"),
    
    News(
        id: 4,
        imageURL: URL.init(string: "https://ichef.bbci.co.uk/onesport/cps/800/cpsprodpb/1093F/production/_101230976_curry2.jpg")!,
        title: "NBA: Golden State Warriors to face Houston Rockets in Western Conference finals",
        category: .sport,
        preview: "Reigning champions Golden State Warriors will face Houston Rockets for a place in the NBA finals.",
        text: """
            The Warriors reached the Western Conference finals for the fourth straight season, as they completed a 4-1 series win against New Orleans Pelicans with a 113-104 victory.

            Houston beat Utah Jazz 112-102 to also wrap up a 4-1 series win.

            Cleveland Cavaliers will face either Boston Celtics or Philadelphia 76ers in the Eastern Conference final.

            The Celtics lead the 76ers 3-1 going into game five on Wednesday.

            Houston and Golden State, the top seeded teams in the west, begin their best-of-seven series on Monday.
            """,
        source: "BBC", keywords: "Houston Rockets NBA Golden State Warriors", date:"09.05.2018"),
    
    News(
        id: 5,
        imageURL: URL.init(string: "https://ichef.bbci.co.uk/onesport/cps/800/cpsprodpb/12CC0/production/_101229967_lehmannsmith_getty.jpg")!,
        title: "Darren Lehmann: Former Australia head coach set for new role",
        category: .sport,
        preview: "Former Australia head coach Darren Lehmann, who resigned after the ball-tampering scandal in March, is set for a new role with Cricket Australia.",
        text: """
            Lehmann, 48, was cleared of any involvement in ball-tampering on the tour of South Africa.

            He will coach the national performance squad from 28 May until October.

            "I had a good chat with him and he was really keen to continue his coaching," said national performance program head coach Troy Cooley.

            "Darren has already told me he is relishing the opportunity, so it's win-win all round.

            "To have someone who's got that experience matching up with our coaching staff, it's invaluable," he told cricket.com.au.

            Lehmann will work alongside former Australia batsman Chris Rogers and ex-seamer Ryan Harris.

            Lehmann, who played 27 Tests and 117 one-day internationals for Australia, was appointed head coach in 2013.

            He oversaw two Ashes series victories over England and a 2015 World Cup triumph on home soil.

            Captain Steve Smith and vice-captain David Warner were sacked and banned for a year for their part in the ball-tampering controversy, while batsman Cameron Bancroft was suspended for nine months.

            Justin Langer, who was last week named as Lehmann's successor, will oversee Australia's limited-overs tour of England in June.
            """,
        source: "BBC", keywords: "Darren Lehmann cricket World Cup triumph on home soil", date:"09.05.2018"),
    
    News(
        id: 6,
        imageURL: URL.init(string: "https://ichef-1.bbci.co.uk/news/660/cpsprodpb/26C2/production/_101222990_gettyimages-829629148.jpg")!,
        title: "Toronto Blue Jays player Roberto Osuna charged with assault",
        category: .sport,
        preview: "Canadian police have charged Toronto Blue Jays baseball pitcher Roberto Osuna with assault.",
        text: """
            Toronto authorities have confirmed they charged the 23-year-old major league baseball player on Tuesday and that he will appear in court on 18 June.
            Police would not provide any further details with regards to the assault charge.
            Mr Osuna has since been released from police custody and has been placed on administrative leave by the league.
            In a statement sent to the Canadian Press, Major League Baseball (MLB) said it "takes all the allegations of this nature very seriously".
            "We are investigating the circumstances in accordance with the joint MLB-MLBPA (Major League Baseball Players' Association) Domestic Violence Policy."
            The joint policy by the league and the players' association came into force in August 2015.
            In a statement, the team said they are aware of the incident and fully support the decision by the office of MLB Commissioner Rob Manfred to place Mr Osuna on leave.

            "We are taking the matter extremely seriously, as the type of conduct associated with this incident is not reflective of our values as an organisation," the team said.
            Mr Osuna, originally from Juan Jose Rios, Mexico, has been with the Blue Jays for four seasons, since 2015.
            The team had planned to give away t-shirts bearing the name of the closing pitcher to fans on Thursday during a game with the Seattle Mariners.
            """,
        source: "BBC", keywords: "Torronto Canada baseball Roberto Osuna", date:"08.05.2018"),
    
    News(
        id: 7,
        imageURL: URL.init(string: "http://e2.365dm.com/18/05/16-9/20/skysports-brian-odriscoll_4304074.jpg")!,
        title: "QUIZ: European Champions Cup finals!",
        category: .sport,
        preview: "We're down to two in Europe's premier competition! For Leinster and Racing 92, the biggest day of their seasons has arrived, and you can catch it live on Sky Sports!",
        text: """
            Indeed for some players, it will be the biggest day of their careers to date. Leinster go in as favourites, having stormed through the most difficult of draws to reach Bilbao, but Racing have fought for every inch in their journey to the final.

            To get in the mood, why not put your knowledge of European Cup finals throughout the years to the test with our quiz below!
            """,
        source: "Sky Sports", keywords: "European Champions Cup Racing 92 Leinster Rugby", date:"09.05.2018"),
    
    News(
        id: 8,
        imageURL: URL.init(string: "http://e0.365dm.com/18/03/16-9/20/skysports-dillian-whyte-boxing_4260550.jpg")!,
        title: "Dillian Whyte will appeal 'outrageous' WBC rule, says Eddie Hearn",
        category: .sport,
        preview: "Dillian Whyte will object to the WBC's ruling that prevented him becoming Deontay Wilder's mandatory challenger, said promoter Eddie Hearn.",
        text: """
            The governing body last week ruled that Whyte must fight Luis Ortiz in a "second mandatory" while Wilder's next mandatory opponent would be Dominic Breazeale.

            We're going to appeal that. [WBC president] Mauricio Sulaiman said he would talk about it this week, and maybe post a resolution," Hearn exclusively told Sky Sports.

            Whyte has long been ranked No 1 by the WBC, owns their 'silver title, and consolidated that position by beating Lucas Browne in March, but was still overlooked in favour of No 2 ranked Breazeale.

            "I've had the sanctioning fights, I've done everything they have asked me to do," Whyte told Sky Sports last week. "My information was - I was meant to be next in line."

            Hearn added: "We don't mind fighting Ortiz but it has to be for the mandatory, not to be the 'second mandatory' behind a guy who has never fought an eliminator and who is behind Whyte in the rankings. It's outrageous."

            Anthony Joshua vs Wilder for all four major world heavyweight titles is "70 percent" likely to happen next, according to Hearn, who has held "positive conversations" this week.

            Joshua and Wilder's mandatory obligations would be postponed if a deal is agreed to crown an undisputed champion - but the queue of challengers is forming behind both.

            Hearn explained: "If Joshua doesn't fight Wilder, then Wilder will fight Breazeale. If Wilder fights Breazeale, he doesn't need to be the mandatory.

            "But Wilder's team will want Breazeale to be the mandatory because there isn't much credibility in the fight.

            "Let that fight be a voluntary, then the winner of Whyte-Ortiz is the mandatory.

            "But, also, we've got purse bids next week for Whyte vs Kubrat Pulev.

            "Everything is up in the air - but within the next 10 days all of those things will be a lot clearer."

            Whyte's setback with the WBC has opened doors with the IBF, who have ordered he fights Pulev for the opportunity to become mandatory challenger to the belt owned by Joshua.

            "It's a good fight. Dillian can become IBF mandatory and that's a good place for him to be," Hearn said.

            "[Promoter Kalle Sauerland] has Pulev and we're in extensive dialogue to make the fight.

            "I don't think me and Kalle have ever been to a purse bid - usually we make a deal!

            "Different fights have different characteristics to the deal. [Pulev] does not have corporate sponsors, an international TV deal, or the levels of control of Joshua. So, it's just about the money."
            """,
        source: "Sky Sports", keywords: "Boxing Dillian Whyte WBC", date:"03.05.2018"),
    
    
    //________________________________________Technologie  Data Set____________________________________________
    
    News(
        id: 9,
        imageURL: URL.init(string: "https://ichef-1.bbci.co.uk/news/660/cpsprodpb/A0C1/production/_101235114_mediaitem101235111.jpg")!,
        title: "Google bans abortion poll ads in Ireland",
        category: .technologie,
        preview: "Google will ban all advertisements relating to Republic of Ireland's forthcoming referendum on abortion, which takes place on 25 May.",
        text: """
            On Tuesday, Facebook started to block ads relating to the referendum that did not originate from advertisers inside Ireland.
            However, Google said all ads relating to the vote would be blocked.
            Google's ads appear on millions of websites, including its video-sharing platform YouTube.
            "Following our update around election integrity efforts globally, we have decided to pause all ads related to the Irish referendum on the Eighth Amendment," the company said in a statement.
            Voters will decide whether to repeal the Eighth Amendment to the Republic of Ireland's constitution, which states "the right to life of the unborn".
            At present, the country has a near-total ban on abortion, with terminations very rarely allowed.
            In April, Irish data protection commissioner Helen Dixon said it was possible that foreign organisations could try to sway the referendum.
            Ireland's electoral laws ban foreign organisations from funding campaign groups in the country. However, social media sites and search engines are not prohibited from carrying foreign-funded advertisements.
            Google said ads relating to the vote would be "paused" from 10 May.
            """,
        source: "BBC", keywords: "google Ireland facebook", date:"09.05.2018"),
    
    News(
        id: 10,
        imageURL: URL.init(string: "https://ichef-1.bbci.co.uk/news/660/cpsprodpb/22DB/production/_98032980_e2a612e7-5015-438d-8893-64a70b46e344.jpg")!,
        title: "Paedophilia-defending' YouTuber has channel removed",
        category: .technologie,
        preview: "A Singaporean YouTuber who allegedly posted videos defending paedophilia has had his channel terminated.",
        text: """
            Amos Yee, 19, is currently living in the United States having been granted asylum there.
            He had previously been imprisoned twice in Singapore over videos that criticised religion and state authorities.
            His YouTube channel had attracted 40,000 subscribers, according to the South China Morning Post.
            On Facebook, a post on Mr Yee's page said: "My YouTube channel and all the videos there have been completely taken down because of my views defending paedophilia." He also tweeted about the removal.
            The BBC has contacted Mr Yee for comment.
            The Sun newspaper reported on 20 April that the US Toy Association, a trade body, had removed its advertisements from YouTube after one of its campaigns had been found on Mr Yee's Channel.
            In December, the YouTuber said that he had been asked to leave accommodation near Chicago and claimed this too was because of his views on paedophilia.
            There are various reasons why a YouTube video or channel may be removed from the site - and YouTube has a series of community guidelines by which its members must abide.
            "We are very sensitive to any harmful or dangerous content that involves minors," the guidelines state, however YouTube declined to explain why Mr Yee's account had been removed when approached by the BBC.
            """,
        source: "BBC", keywords: "youtuber youtube Amos Yee Chicago", date:"08.05.2018"),
    
    News(
        id: 11,
        imageURL: URL.init(string: "https://ichef.bbci.co.uk/news/660/cpsprodpb/18679/production/_101216999_e0121b55-1956-4247-b0e2-9e69cf14d751.jpg")!,
        title: "World of Warcraft attacker jailed in US",
        category: .technologie,
        preview: "A World of Warcraft gamer has been sentenced to jail in the US for carrying out a cyber-attack that interfered with the service in Europe.",
        text: """
            Calin Mateias had been accused of flooding Blizzard Entertainment's computer servers with traffic between February and September 2010.
            He was said to have carried out the distributed denial of service (DDoS) assault to prevent rivals logging in.
            Thousands of players were caught up in the resulting disruption.
            The Romanian citizen - who had been extradited to Los Angeles to face the charges - pleaded guilty in February to one count of causing damage to a protected computer.
            He has also paid $29,987 (£22,176) to Blizzard to cover the costs it racked up trying to repel the data deluge.

            Prosecutors in the case said the then 30-year-old had been motivated by a "juvenile desire" to beat his rivals.
            "Mateias, using his in-game avatar, often participated in collaborative events, such as 'raids' where players joined forces to meet game objectives and were rewarded with virtual proceeds or in-game advantages," explained the Department of Justice in a press release.
            "[He] became involved in disputes with other players for a variety of reasons, including the division of loot and membership in raid teams."
            Mateias - who is said to have used the online alias Dr Mengele, after the Nazi doctor who conducted deadly experiments on prisoners - had also faced charges over his alleged role in an effort to hack and rob California-based computer vendor Ingram Micro.
            However, prosecutors dropped the case when Mateias was sentenced to one year in prison over the World of Warcraft affair.
            """,
        source: "BBC", keywords: "World of Warcraft gamer US DDOS", date:"08.05.2018"),
    
    News(
        id: 12,
        imageURL: URL.init(string: "https://www.technewsworld.com/article_images/story_graphics_xlarge/xl-2018-snap-spectacles2-1.jpg")!,
        title: "eBay plans to relaunch eBay India after it makes $1.1B selling its Flipkart stake to Walmart",
        category: .technologie,
        preview: "Last year, eBay appeared to throw in the towel in India after it sold its business in the country to Flipkart and took a minority stake in the country’s e-commerce leader. Now, eBay is making a u-turn.",
        text: """
            Last year, eBay appeared to throw in the towel in India after it sold its business in the country to Flipkart and took a minority stake in the country’s e-commerce leader. Now, eBay is making a u-turn.

            In the wake of Walmart’s intention to buy a controlling stake in Flipkart for $16 billion, eBay has announced that it is among the investors that will be selling its stake in the business, in eBay’s case for gross proceeds of $1.1 billion. And along with that, it said it plans to relaunch eBay India, focusing not on domestic sales as it had done previously, but on cross-border sales: selling into India from abroad, and from India to other markets.

            The short announcement doesn’t give too many details how it will progress on these future plans, but as part of it, eBay confirmed that it will be ending its strategic deal with Flipkart, which had included a license for Flipkart to use eBay.in and for the two companies to cross-promote products between the two platforms.

            “We plan to relaunch eBay India with a differentiated offer to focus initially on the cross-border trade opportunity, which we believe is significant,” the company noted in a statement. “We believe there is huge growth potential for e-commerce in India and significant opportunity for multiple players to succeed in India’s diverse, domestic market.”

            The announcement is not too surprising. India represents massive potential: the populous country is the second-biggest economy in Asia, and one of the fastest-growing globally, with a digitally-savvy population (35 percent of all Indians use the Internet, making it the second-biggest market in the world). In that regard, it would have been a surprise, and possibly a foolish choice, to retreat from India completely in the wake of Walmart’s acquisition.

            On the other hand, eBay has had a mixed track record when it comes to leveraging the market opportunity. In addition to its own site that it had sold to Flipkart, eBay was a repeat investor in Snapdeal, another e-commerce marketplace in the country that has fallen on challenging times amid fierce competition in the market. Snapdeal has in the last year laid off staff, struggled with finances and failed to close an acquisition deal with Flipkart.

            In a positive light, there is still a lot to play for, and by offering a differentiated opportunity focusing on cross-border sales, eBay could exploit a gap in the market that Walmart will not have the appetite to pursue. EBay doesn’t state this, but in an ideal world, it’s going into its plans with its eyes open, and based on purchasing patterns it’s been seeing in and out of the country in recent years.

            We’re contacting eBay to see if the company can give us more details and we’ll update this post as we learn more. when Mateias was sentenced to one year in prison over the World of Warcraft affair.
            """,
        source: "Techcrunch", keywords: "eBay India Walmart", date:"09.05.2018"),
    
    
    News(
        id: 13,
        imageURL: URL.init(string: "https://techcrunch.com/wp-content/uploads/2018/05/chrome-linux-apps.png?w=990&crop=1")!,
        title: "You can now run Linux apps on Chrome OS",
        category: .technologie,
        preview: "For the longest time, developers have taken Chrome OS machines and run tools like Crouton to turn them into Linux-based developer machines.",
        text: """
            For the longest time, developers have taken Chrome OS machines and run tools like Crouton to turn them into Linux-based developer machines. That was a bit of a hassle, but it worked. But things are getting easier. Soon, if you want to run Linux apps on your Chrome OS machine, all you’ll have to do is switch a toggle in the Settings menu. That’s because Google is going to start shipping Chrome OS with a custom virtual machine that runs Debian Stretch, the current stable version of the operating system.

            It’s worth stressing that we’re not just talking about a shell here, but full support for graphical apps, too. That means you could now, for example, run Microsoft’s Linux version of Visual Studio Code right on your Chrome OS machine. Or build your Android app in Android Studio and test it right on your laptop, thanks to the built-in support for Android apps that came to Chrome OS last year.

            The first preview of Linux on Chrome OS is now available on the Pixelbook, with support for more devices coming soon.

            Google’s  PM director for Chrome OS Kan Liu told me the company was obviously aware that people were using Crouton to do this before. But doing this also meant doing away with all of the security features that come with Google’s operating system. And as more powerful Chrome OS machines hit the market in recent years, the demand for a feature like this also grew.

            To enable support for graphical apps, the team opted to integrate the Wayland display server; from the user’s perspective, the actual window dressing will look the same as any other Android or web app on Chrome OS.

            Most regular users won’t necessarily benefit from built-in Linux support, but this will make Chrome OS machines even more attractive to developers — especially the more high-end ones like Google’s own Pixelbook. Liu stressed that his team spent quite a bit of work optimizing the virtual machine, too, so there isn’t a lot of overhead when you run Linux apps — meaning that even less powerful machines should be able to handle a code editor without issues.

            Now, it’s probably only a matter of hours before somebody starts running Windows apps in Chrome OS with the help of the Wine emulator.
            """,
        source: "Techcrunch", keywords: "chrome os linux ", date:"09.05.2018"),
    
    
    News(
        id: 14,
        imageURL: URL.init(string: "https://techcrunch.com/wp-content/uploads/2018/05/gettyimages-73210343.jpg?w=730&crop=1")!,
        title: "StubHub bets on Pivotal and Google Cloud as it looks to go beyond tickets",
        category: .technologie,
        preview: "StubHub is best known as a destination for buying and selling event tickets. The company operates in 48 countries and sells a ticket every 1.3 seconds. But the company wants to go beyond that and provide its users with a far more comprehensive set of services around entertainment.",
        text: """
            StubHub is best known as a destination for buying and selling event tickets. The company operates in 48 countries and sells a ticket every 1.3 seconds. But the company wants to go beyond that and provide its users with a far more comprehensive set of services around entertainment. To do that, it’s working on changing its development culture and infrastructure to become more nimble. As the company announced today, it’s betting on Google Cloud and Pivotal Cloud Foundry as the infrastructure for this move.

            StubHub  CTO Matt Swann told me that the idea behind going with Pivotal — and the twelve-factor app model that entails — is to help the company accelerate its journey and give it an option to run new apps in both an on-premise and cloud environment.

            “We’re coming from a place where we are largely on premise,” said Swann. “Our aim is to become increasingly agile — where we are going to focus on building balanced and focused teams with a global mindset.” To do that, Swann said, the team decided to go with the best platforms to enable that and that “remove the muck that comes with how developers work today.”

            As for Google, Swann noted that this was an easy decision because the team wanted to leverage that company’s infrastructure and machine learning tools like Cloud ML. “We are aiming to build some of the most powerful AI systems focused on this space so we can be ahead of our customers,” he said. Given the number of users, StubHub sits on top of a lot of data — and that’s exactly what you need when you want to build AI-powered services. What exactly these will look like, though, remains to be seen, but Swann has only been on the job for six months. We can probably expect to see more for the company in this space in the coming months.

            “Digital transformation is on the mind of every technology leader, especially in industries requiring the capability to rapidly respond to changing consumer expectations,” said Bill Cook, President of Pivotal . “To adapt, enterprises need to bring together the best of modern developer environments with software-driven customer experiences designed to drive richer engagement.”

            Stubhub has already spun up its new development environment and plans to launch all new ups on this new infrastructure. Swann acknowledged that they company won’t be switching all of its workloads over to the new setup soon. But he does expect that the company will hit a tipping point in the next year or so.

            He also noted that this over transformation means that the company will look beyond its own walls and toward working with more third-party APIs, especially with regard to transportation services and merchants that offer services around events.

            Throughout our conversation, Swann also stressed that this isn’t a technology change for the sake of it.


            """,
        source: "Techcrunch", keywords: "StubHub Matt Swann google ", date:"09.05.2018"),
    
    News(
        id: 15,
        imageURL: URL.init(string: "https://techcrunch.com/wp-content/uploads/2018/05/screen-shot-2018-05-09-at-13-53-53.png?w=730&crop=1")!,
        title: "Amazon opens showrooms in model homes to demo, sell smart home products",
        category: .technologie,
        preview: "Last week, we reported on how Amazon was leveraging a new relationship with home builder Lennar to expand its smart home business, specifically in the sale of home security services.",
        text: """
            Last week, we reported on how Amazon was leveraging a new relationship with home builder Lennar to expand its smart home business, specifically in the sale of home security services. Today, Amazon is taking the next step forward in that strategy: it’s launching a new chain of showrooms it’s calling the Amazon Experience Centers across Lennar model homes to demo and help sell its smart home devices, Amazon Dash Buttons, and other consumer electronics services such as streaming Prime Content with Fire TV.

            The model homes will be fully connected up as Alexa-enabled smart homes, Amazon says, with customers able to walk through and see the full effect of being able to use Alexa to control all electronic and connected kit, from TVs and lights to thermostat and window blinds.

            These Experience Centers will also become places where people can go to arrange for and order home services through Amazon Home Services, the company’s Thumbtack-style marketplace that lets people search for and book a range of in-home contractors for cleaning, fixing or helping in other ways.

            The centers will open first in 15 model homes in the cities of Atlanta, Dallas, Los Angeles, Miami, Orlando, San Francisco, Seattle, and Washington DC, and Amazon will be looking to strike deals with other home builders to replicate the model.

            The Experience Centers, and the other work that Amazon is doing to provide a more in-person angle to its smart home strategy specifically is particularly important to the company’s smart home and consumer electronics strategy. If people are buying products to put into their homes, and many of those products represent the next generation of consumer electronics, it’s important for Amazon to provide more real-world touchpoints both to better sell and explain the services, and to help make consumers — the majority of whom will not be early adopters — more comfortable with the purchases.

            “We wanted customers to experience a real home environment that showcases the convenience of the Alexa smart home experience, great entertainment available with Prime, and Home Services,” said Bhavnish Lathia, general manager, Amazon Services, in a statement. “We are excited to extend our relationship with Lennar with the launch of Amazon Experience Centers. As one of the nation’s largest homebuilders, Lennar offers the potential to enable this experience within easy driving distance of millions of customers.”

            The launch of these Experience Centers is also just the latest move by Amazon to bring its online marketplace and virtual salesrooms into more physical, brick-and-mortar environments. Other efforts have included Go, Amazon’s cashier-free shopping experience launched at the end of last year, and its university campus-based stores, which have been around now for several years. All of these also complement the major investment that Amazon has made in another physical sales environment: last year the company acquired the Whole Foods chain of supermarkets for $13.7 billion.

            As with the company’s home services specialists, the people who will staff the Experience Centers will also be employees of Amazon, “experts” in the company’s parlance, “employees who are specially trained on the latest technology and are passionate about helping customers.”

            For Lennar, the idea will be to use the format to help it sell more of its homes, as well as the premium packages to add on the numerous extras of making them into high-end smart homes. The company controversially once worked with Apple as its smart home partner but more recently swapped to working with Amazon, reportedly because Amazon sold not only its own devices, but those of third parties.

            “Amazon’s ability to bring a home to life with Alexa smart home experiences, entertainment and services – coupled with their obsession with customer experience – is a natural extension of our Everything’s Included approach to homebuilding,” said David Kaiserman, president of Lennar Ventures, in a statement. “We picked Amazon because of our shared commitment to customers, their Amazon experts across the country, and their ability to connect customers with thousands of service providers through Amazon Home Services.”

            """,
        source: "Techcrunch", keywords: "amazon fire tv home services ", date:"09.05.2018"),
    //________________________________________Business data set______________________________________________________
    
    News(
        id: 16,
        imageURL: URL.init(string: "https://ichef.bbci.co.uk/news/660/cpsprodpb/14078/production/_100004028_blackpanther3.jpg")!,
        title: "Disney rides Black Panther to profit",
        category: .business,
        preview: "Black Panther's runaway success boosted Walt Disney's profits in the first three months of 2018, helping to offset pressures in the TV business.",
        text: """
            Profits up 23% to $2.9bn (£2.14bn) beat analysts' forecasts, while revenue rose 9% year-on-year to $14.5bn.

            The increase was driven by the film and theme park units, which outshone a TV arm facing strong digital competition.

            The profits came amid questions about Disney's plan to buy the bulk of 21st Century Fox's business.

            Disney last year announced it would buy certain Fox assets, including its film and television studios and its 39% stake in Sky, in a deal valued at more than $66bn, including debt.

            At the time, Disney boss Robert Iger said the purchase would help to supplement Disney's content as it plans to compete with the likes of Netflix by starting its own online subscription streaming sites.

            Mr Iger said Disney remains committed to the deal, which needs approval from regulators to move forward.

            He declined to comment on reports that Comcast, a major US pay-TV and internet provider, may be preparing a rival offer for Fox assets.

            Comcast had been interested in Fox last year, but was reportedly rebuffed in favour of Disney due to anti-trust concerns.

            Comcast last month made a formal £22bn offer for the UK broadcaster, challenging Fox's plans to buy the 61% of Sky it does not already own. Disney had planned to become Sky's full owner if Fox's transaction went through.

            Moving online
            Mr Iger said Disney's digital plans, which are a response to rapidly falling cable television subscriptions, do not depend on Fox to move forward.

            The company has already launched its ESPN+ sports service and has invested in Hulu, a television and moving streaming site.

            The firm also plans to start a Disney-branded subscription service in late 2019 that will offer access to the company's significant film and television catalogue.
            """,
        source: "BBC", keywords: "black panther diesney profit", date:"09.05.2018"),
    
    News(
        id: 17,
        imageURL: URL.init(string: "https://ichef.bbci.co.uk/news/660/cpsprodpb/110C7/production/_101013896_hi045639536.jpg")!,
        title: "Iran sanctions threaten North Sea deal",
        category: .business,
        preview: "The Rhum gas field in the North Sea, which supplies 5% of the UK's gas, is half-owned by the Iranian State Oil Company.",
        text: """
            The Rhum gas field in the North Sea, which supplies 5% of the UK's gas, is half-owned by the Iranian State Oil Company.

            BP, which owns the other half, is in the process of offloading its share to small North Sea specialist Serica, but that deal has not completed.

            BP does huge amounts of business in the US and will be desperately keen to avoid being seen as a business partner of the Iranian state.

            It's a good example of how sanctions against a state can have wide repercussions for the international business community.

            The chairman of Serica, Tony Craven-Walker, told the BBC he was still hopeful that the deal would close and that there would be no interruption to a major source of gas for UK families and businesses.

            However, one of the conditions of the deal closing is obtaining a licence to operate from the US Treasury Department, which is thrown into question with the imminent reintroduction of US sanctions against Iran.

            BP and Serica both said they had no plans to stop production in the short term.

            However, Serica conceded that it may have to change personnel and companies involved in the operation of the field to ensure there were no US individuals or entities involved.

            Cold snap
            UK gas supplies were shown to be very tight during the recent cold snap, when National Grid issued a gas deficit warning that resulted in some companies agreeing to cut their consumption to protect household supplies.

            Earlier this year, Iran's oil minister, Bijan Namdar Zanganeh, said multinationals including Royal Dutch Shell, France's Total, Italy's ENI, Japan's Inpex and Malaysia's Petronas had submitted proposals to expand the Azadegan oil field near the Iraqi border.

            For those companies with significant business in the US - such as Shell and Total - those proposals may need to be shelved. Total is particularly exposed, as it has made significant investments in Iran.

            Meanwhile, the Department for International Trade said the government "continues to fully support expanding our trade relationship with Iran".

            However, it added this line that firms may not find totally reassuring: "How UK companies act in response to US sanctions is a commercial and legal decision for that company. Where necessary, legal advice should be sought."

            When the US decides it doesn't want to do business with a country, non-US companies can also get burned.

            In 2012, HSBC was forced to pay a $1.9bn US fine for breaching certain sanctions, including the one imposed on Iran. Standard Chartered paid a $400m fine for Iranian sanction-busting activity.

            Both HSBC and Standard Chartered did not re-enter the Iranian market after the original sanctions were lifted - a factor that many think held Iran's economy back over the last few years.

            In a globalised world, sanctions can have long tentacles. There is plenty to keep company lawyers busy as the details of this new sanctions regime become clear.
            """,
        source: "BBC", keywords: "Iran sanctions Rhum", date:"09.05.2018"),
    
    
    News(
        id: 18,
        imageURL: URL.init(string: "https://ichef.bbci.co.uk/news/660/cpsprodpb/B3B3/production/_101230064_vodafone.jpg")!,
        title: "Vodafone makes €18bn swoop on Liberty Global cable networks",
        category: .business,
        preview: "Vodafone will pay €18.4bn (£16.1bn) for cable networks in Germany and eastern Europe owned by US firm Liberty Global.",
        text: """
            The deal will allow Vodafone to expand its mobile, TV and broadband services in Hungary, Romania and Czech Republic.

            It will also create a stronger "quad play" competitor for Deutsche Telekom in Germany.

            The long-expected deal with Liberty Global, which also owns Virgin Media, is Vodafone's biggest since its £112bn takeover of Mannesmann in 2000.

            Vodafone said the transaction, which includes Unitymedia in Germany, would create a "converged national challenger" in the country.

            Deutsche Telekom, which is Europe's biggest telecoms operator by revenue and owns T-Mobile, has voiced strong objections to the move.

            Its chief executive, Timotheus Höttges, said it would distort competition: "I personally will fight for fair competition for our customers, to ensure that we do not face a disadvantage."

            He has also questioned whether regulators would approve the tie-up.

            However, Vodafone chief executive Vittorio Colao said that deal "creates a strong competitor to Deutsche".

            Vodafone already owns the largest cable business in Germany after it acquired Kabel Deutschland for €7.7bn five years ago.

            Unitymedia is the second-largest cable network, operating in the three of Germany's 16 states that Vodafone does not already cover.

            Mr Colao said that there was "no geographical overlap" between the two businesses.

            Mike Fries, chief executive of Liberty Global, said: "Even together, Liberty Global and Vodafone, whose cable networks don't compete or overlap, will be half the size of the incumbent operator. It's time to alter market dynamics by unleashing greater investment and competition."

            Vodafone offers only mobile services in Hungary, Romania and the Czech Republic, but buying Liberty's cable business will allow to expand into TV and broadband in those markets.

            As part of the deal, the company will pay Liberty Global €10.6bn in cash, which the US business said would "provide significant additional flexibility to optimise growth and shareholder returns".

            Vodafone has also agreed to a €250m break fee if the acquisition does not complete.

            Shares in Vodafone rose 1.2% to 210.1p in morning trading in London.
            """,
        source: "BBC", keywords: "Vodaphone Germany Hungary Romania", date:"09.05.2018"),
    
    News(
        id: 19,
        imageURL: URL.init(string: "https://i.guim.co.uk/img/media/c9904512dd824d078917cc0cbd636e9b11c2f4ec/0_0_3907_2344/master/3907.jpg?w=300&q=55&auto=format&usm=12&fit=max&s=1116a8067eff7bf69b20387369c4288f")!,
        title: "Richard Branson set for large profit if CYBG and Virgin Money merge",
        category: .business,
        preview: "CYBG has offered £1.6bn, seven years after Branson’s £747m buy-out of Northern Rock",
        text: """
            Richard Branson could bag a large profit on the sale of Virgin Money after receiving a £1.6bn bid for the bank seven years after he led a controversial £747m buyout of Northern Rock – later rebranded Virgin – following its taxpayer rescue.

            Clydesdale and Yorkshire Bank Group (CYBG), which has proposed the deal,said it would create “a genuine alternative to the large incumbent banks”. The enlarged group would have 6 million customers.

            Virgin Money shares climbed more than 9% to 341p on news of the CYBG approach, but a rise in the shares over recent days could interest City watchdogs. The shares climbed 15% from 270p to 312p last week.

            Banking analysts said the deal would present “compelling industrial logic”. It would bring together a more traditional bank, CYBG, which has 169 branches, mostly in Scotland and Yorkshire, and serves 2.8m commercial and personal customers, with Virgin Money’s strong brand in mortgages and credit cards business, which has 3.3m customers.

            Virgin Money has not yet agreed to the deal, which it described as a preliminary proposal, but its shares jumped 9% when the news emerged. Virgin Money shareholders would have 36.5% of the combined group.

            Virgin Money traces its origins back to the 1995 launch of Virgin Direct, an investment business, but it was the takeover of Northern Rock in 2011 that propelled it into a large-scale operation.

            As chancellor, George Osborne agreed to sell Northern Rock to Virgin Money nearly four years after nationalising the bank at the height of the financial crisis. The price paid by a consortium of investors, led by Branson, was half the amount the UK taxpayer had injected into bank. Osborne said at the time that the deal represented value for money for UK taxpayers.

            Branson’s consortium included the US billionaire, Wilbur Ross, now Donald Trump’s commerce secretary. It bought the “good” half of the bank, including its branch network, funded by retail deposits. The “bad” part of Northern Rock – which included its fabled 125% mortgages – remained in public hands, although defaults and losses have been much lower than anticipated.

            The coalition government brushed off calls by MPs, led by Chuka Ummuna, t.

            Virgin Money said in a statement: “The board of Virgin Money is in the process of reviewing this proposal. There can be no certainty either that an offer will be made nor as to the terms of any offer, if made.”

            Advertisement

            Shares in other mid-sized “challenger” banks rose sharply after CYBG’s prompted speculation that a long-awaited consolidation in the sector could become a reality.

            Virgin Money’s rivals, including Metro Bank and OnesavingsBank, rose as investors bet on which might be next to merge in a buoyant British mergers and acquisitions market which has had record levels of activity.

            Analysts said the initial offer was too low and would likely be rejected.

            “We think Virgin shareholders will be lukewarm on the proposal,” said John Cronin at the broker Goodbody, adding that he expected a protracted takeover battle as the two parties jockey over price.

            Under Takeover Panel rules CYBG now has until 4 June to table a formal proposal or walk away for at least six months.

            """,
        source: "The Guardian", keywords: "Richard Branson CYBG virgin money", date:"08.05.2018"),
    
    News(
        id: 20,
        imageURL: URL.init(string: "https://i.guim.co.uk/img/media/1363a43fad457d28da8461d77be056f0421a73ac/665_12_2053_1232/master/2053.jpg?w=620&q=55&auto=format&usm=12&fit=max&s=3889b0d431816de18f56f6bc1ac066d2")!,
        title: "Argentina seeks IMF loan to rescue peso from downward slide",
        category: .business,
        preview: "President Macri says it would help country ‘avoid a crisis like the ones we have faced before’",
        text: """
            Argentina has appealed to the International Monetary Fund for an emergency credit package in an effort to avoid a financial crash and rescue its faltering peso currency from a long downward slide against the dollar.

            The announcement, against a backdrop of surging interest rates and stubbornly resistant inflation, brought back echoes of Argentina’s monetary crash and foreign debt default in December 2001 when the peso dropped overnight to a quarter of its value against the dollar and bank accounts were frozen nationwide.

            “This will allow us to face the new global scenario and avoid a crisis like the ones we have faced before in our history,” the president Mauricio Macri said.

            Macri said international conditions had changed since he assumed office in December 2015. “During the first two years we have had a very favourable global context, but today that is changing, global conditions are becoming increasingly complex due to several factors: interest rates are rising, oil is rising, currencies of emerging countries have been devalued, all variables that we do not control.”

            Last week Argentina’s central bank raised interest rates from 33.25% to 40% in a bid to halt the slide in the peso.

            The Argentinian currency has been losing value against the dollar at a steady rate in the last few months, falling from under 20 pesos to the dollar to 24 pesos on Tuesday despite the latest rate rise. The peso has depreciated by 18% so far this year.

            Government sources quoted in Argentina suggested that Macri will be requesting $30bn from the IMF at below market interest rates. “It’s a large loan that justifies paying the political cost,” a government source was quoted as saying by the daily Clarín.

            Shoring up the value of the peso has proven a heavy drain on central bank reserves in the last months. “Going to the IMF at 4% is saving about half on the interest rate,” tweeted Elisa Carrió, head of the Civic Coalition party that forms part of Macri’s Cambiemos governing coalition. “This will allow us to be covered until 2019.”

            Other members of the coalition were less pleased by the announcement. “More than an agreement with the IMF, what is needed is an agreement between Argentinians,” said Ricardo Alfonsín of the Radical party. “I’m worried by the IMF’s conditions. With time, the remedy could prove worse than the disease.”

            Macri said he had spoken to IMF director Christine Lagarde in order to kick start negotiations for the loan.

            Cornered by lacklustre growth, rising retail prices, diminishing popularity and a smaller-than-expected soy harvest, Macri’s economic plan has been heavily dependent on foreign financing, which had dried up in recent months, prompting Tuesday’s appeal to the IMF for a line of credit.

            Last month the IMF reduced its growth forecasts for Argentina during 2018 from 2.5% to 2%. The government also seems unlikely to meet its projected inflation rate of only 15% for 2018, with the IMF predicting 19.2% instead.


            """,
        source: "The Guardian", keywords: "Argentina IMF president Marci", date:"08.05.2018"),
    
    
    News(
        id: 21,
        imageURL: URL.init(string: "https://i.guim.co.uk/img/media/12b469b6eaf4073b4c1d98c478a04054faf8dd14/0_296_5760_3457/master/5760.jpg?w=620&q=55&auto=format&usm=12&fit=max&s=f344a267c2d8419b516d4a0530e0c685")!,
        title: "Rail industry prepares for season ticket cull in fares shake-up",
        category: .business,
        preview: "UK-wide consultation to study outdated ticketing rules that have ballooned in complexity",
        text: """
            The rail industry is preparing for a cull in the number of fares and season tickets offered to commuters as it launches an appeal for root-and-branch reform of the “outdated” regulations underpinning the £9.7bn-a-year .

            Britain’s rail companies are beginning a public consultation into the rules underpinning the country’s ticketing options, which have ballooned in complexity to offer passengers about 55m different fares.


            
            The Rail Delivery Group (RDG), the trade body representing the firms that run Britain’s railways, said it was launching the UK-wide consultation alongside the watchdog Transport Focus because “decades of well-intentioned but outdated regulations have led to a range of fare options that have not kept pace with technology or how people work and travel today”.

            The pair are pledging to use their findings to “update fares regulation and make things easier for customers” but have ruled out recommendations that will lead to a .

            The industry will wait for the results of the consultation, which will run from June to September, before committing itself to any specific proposals.

            However, it has already cited its irritation with certain restrictions, including “inflexible seven-day, monthly or annual season tickets”, which must be offered to passengers under regulations that date back to the mid-1990s.

            Rail firms claim these restrictions make it impractical to offer more flexible “smart ticketing”, such as those implemented on the London Underground, where computer systems can calculate the most cost-effective ticket for different customers. They argue that the style of season tickets has become outdated because of more flexible working patterns.

            However, train tickets that would suit modern work patterns – such as a three-day-a-week season ticket – are too difficult to offer under current rules, train operators say.

            A spokesman for the RDG indicated that some fares might have to be scrapped in order to make way for new ones. “It doesn’t make sense to offer a three-or-four-day season ticket. There are certain fares that train companies have to sell. Unless we get rid of them, [new fares] keep adding to the total number.”

            According to research commissioned by the industry from the consulting group KPMG, only 34% of rail customers are “very confident” they bought the best-value ticket for their last journey and only 29% were “very satisfied” with the experience of buying their ticket. The industry says reforming the fares systems has the potential to attract more people to travel by train.

            Anthony Smith, the chief executive of Transport Focus, said: “Rail passengers want a simpler, more understandable and modern fares system which matches the way we now travel. Opening up the debate and looking at the pros and cons of various reform options is welcome. Transport Focus will make sure the passenger voice is heard in these debates.”

            Jane Gratton, the head of business environment at the British Chambers of Commerce, said: “Businesses rely heavily on the rail network and will welcome this long-overdue review of the fares and ticketing system. Increasingly confusing, frustrating and unfair, the current system needs to be brought in line with the more nimble and flexible way in which firms now operate. It’s the obvious next step to ensure people gain maximum benefit from the ongoing investment in our railways.”

            The regulations underpinning rail fares have remained unchanged from the mid-1990s, when the 1995 ticketing settlement agreement spelled out how fares should be set and sold.

            As it pre-dates widespread use of internet and smartphone technologies, the regulations assume that all customers will buy their ticket by visiting a ticket office and set out in detail how customers must be able to buy a ticket from each of the 2,500 stations in Britain to every other station in the country.

            A final report from the rail industry on the fare system is expected to be published in the autumn.

            """,
        source: "The Guardian", keywords: "UK train industry rail", date:"08.05.2018")
    
    
]
