/*
 See the LICENSE.txt file for this sample’s licensing information.

 Abstract:
 A notification for the watchOS app.
 */

import SwiftUI
import UserNotifications
import WatchKit

class NotificationController: WKUserNotificationHostingController<NotificationView> {
    var landmark: Landmark?
    var title: String?
    var message: String?

    let landmarkIndexKey = "landmarkIndex"

    override var body: NotificationView {
        NotificationView(title: title,
                         message: message,
                         landmark: landmark)
    }

    override func didReceive(_ notification: UNNotification) {
        let modelData = ModelData()

        let notificationData =
            notification.request.content.userInfo as? [String: Any]

        let aps = notificationData?["aps"] as? [String: Any]
        let alert = aps?["alert"] as? [String: Any]

        title = alert?["title"] as? String
        message = alert?["body"] as? String

        if let index = notificationData?[landmarkIndexKey] as? Int {
            landmark = modelData.landmarks[index]
        }
    }
}