//
//  AppDelegate.swift
//  Curiosity
//
//  Created by Vo1 on 29.04.18.
//  Copyright © 2018 InteractiveNewsExplorer. All rights reserved.
//

import UIKit
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions
        launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // set app delegate as notification center delegate
        UNUserNotificationCenter.current().delegate = self
        return true
    }
    var window: UIWindow?
}
extension AppDelegate: UNUserNotificationCenterDelegate {
    
    // called when user interacts with notification (app not running in foreground)
    func userNotificationCenter(_ center: UNUserNotificationCenter,
                                didReceive response: UNNotificationResponse, withCompletionHandler
        completionHandler: @escaping () -> Void) {
        
        // do something with the notification
        print(response.notification.request.content.userInfo)
        
        // the docs say you should execute this asap
        return completionHandler()
    }
    
    // called if app is running in foreground
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent
        notification: UNNotification, withCompletionHandler completionHandler:
        @escaping (UNNotificationPresentationOptions) -> Void) {
        
        // show alert while app is running in foreground
        return completionHandler(UNNotificationPresentationOptions.alert)
    }
}
