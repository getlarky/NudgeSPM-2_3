//
//  AppDelegate.swift
//  LarkyNudgeGeoTest
//
//  Created by Juan Rodriguez on 23/6/23.
//

import UIKit
import nudgeBase

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        try? NudgeBase.registerForPushNotifications()
        application.registerForRemoteNotifications()
        
        return true
    }
}

// MARK: - NudgeBase Notifications

extension AppDelegate {
    // Finished registering
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        NudgeBase.onRegisteredForNotifications(deviceToken: deviceToken)
    }
    
    // Possible error
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        NudgeBase.onFailedToRegisterForNotifications(error:error)
    }
    
    // Received notification
    func application(
        _ application: UIApplication,
        didReceiveRemoteNotification userInfo: [AnyHashable: Any],
        fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void
    ) {
        NudgeBase.receivedPush(notificationPayload:userInfo, application: application)
    }
}

@available(iOS 10, *)
extension AppDelegate: UNUserNotificationCenterDelegate {
    
    // Receive displayed notifications for iOS 10 devices.
    func userNotificationCenter(
        _ center: UNUserNotificationCenter,
        willPresent notification: UNNotification,
        withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void
    ) {
        if #available(iOS 14.0, *) {
            completionHandler([[.banner, .sound, .badge]])
        } else {
            // Fallback on earlier versions
            completionHandler([[.alert, .sound, .badge]]) }
    }
    
    func userNotificationCenter(
        _ center: UNUserNotificationCenter,
        didReceive response: UNNotificationResponse,
        withCompletionHandler completionHandler: @escaping () -> Void
    ) {
        NudgeBase.tappedNotification(notification: response.notification)
        completionHandler()
    }
    
}
