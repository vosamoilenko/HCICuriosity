//
//  NotificationManager.swift
//  Curiosity
//
//  Created by Vo1 on 12.05.18.
//  Copyright © 2018 InteractiveNewsExplorer. All rights reserved.
//

import Foundation
import UserNotifications

class NotificationManager: NSObject {
    static var shared = NotificationManager()
    let center = UNUserNotificationCenter.current()
    
    func requestAuthorization() {
        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
            if error == nil {
                print("Permission granted")
            }
        }
    }
    
    func sendLocalNotification(in time: TimeInterval, cat: NewsCategory) {
        let content = UNMutableNotificationContent()
        content.title = NSString.localizedUserNotificationString(forKey: "Hey you, you got something interesting to read!", arguments: nil)
        content.body = NSString.localizedUserNotificationString(forKey: "Start reading new article about " + cat.rawValue, arguments: nil)
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        let request = UNNotificationRequest(identifier: "Timer", content: content, trigger: trigger)
        
        center.add(request) { (error) in
            if error == nil {
                print("Pushed")
            }
        }
        
        
        
    }
    
}
