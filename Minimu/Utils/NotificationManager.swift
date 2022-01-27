//
//  LocalNotificationManager.swift
//  Minimu
//
//  Created by Juliana Santana on 24/01/22.
//


import SwiftUI
import UserNotifications

class NotificationManager: ObservableObject {
    
    var notifications = [Notification]()
    
    init() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { granted, error in
            if granted == true && error == nil {
                print("Notifications permitted")
            } else {
                print("Notifications not permitted")
            }
        }
    }

    
    func sendNotification(title: String, subtitle: String?, body: String, launchIn: Double) {
        
        let content = UNMutableNotificationContent()
        content.title = title
        content.body = body
        content.sound = UNNotificationSound.default
        var dateComponents = DateComponents()
        dateComponents.hour = 8
        dateComponents.minute = 0
        dateComponents.weekday = 3  // Tuesday
        
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: launchIn, repeats: true)
        let request = UNNotificationRequest(identifier: "demoNotification", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
    }
    
}

extension UIViewController: UNUserNotificationCenterDelegate {
    public func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Swift.Void) {
        completionHandler( [.badge, .sound])
    }
    
    public func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        
        let userInfo = response.notification.request.content.userInfo
        if let additionalData = userInfo["additionalData"] as? String {
            print("Additional data: \(additionalData)")
        }
        
        switch response.actionIdentifier {
        case UNNotificationDefaultActionIdentifier:
            print("User tapped on message itself rather than on an Action button")
            
        case "TapToReadAction":
            print("User tapped on Tap to read button")
            break
            
        default:
            break
        }
        
        completionHandler()
    }
 
}

