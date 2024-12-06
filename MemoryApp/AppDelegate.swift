//
//  AppDelegate.swift
//  MemoryApp
//
//  Created by edy on 2024/9/18.
//

import UIKit
import UserNotifications

@main
class AppDelegate: UIResponder, UIApplicationDelegate ,JPUSHRegisterDelegate{



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        application.applicationIconBadgeNumber = 0
        
        // MARK: - 极光推送
        JPUSHService.setup(withOption: launchOptions, appKey: "9a37a757458d7f7db2f7d1db", channel: "", apsForProduction: true, advertisingIdentifier: "")
        let entity = JPUSHRegisterEntity()
        entity.types = 0|1|2
        JPUSHService.register(forRemoteNotificationConfig: entity, delegate: self)
        
        return true
    }

    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        JPUSHService.registerDeviceToken(deviceToken)
    }
    

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        
    }
    
    func jpushNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (Int) -> Void) {
        
    }

    func jpushNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse) async {
        
    }
    
    func jpushNotificationCenter(_ center: UNUserNotificationCenter, openSettingsFor notification: UNNotification) {
        
    }
    
    func jpushNotificationAuthorization(_ status: JPAuthorizationStatus, withInfo info: [AnyHashable : Any]?) {
        
    }
    


}

