import 'package:Myntra_App/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 90,
      width: double.infinity,
      margin: EdgeInsets.all(getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      decoration: BoxDecoration(
        color: Colors.pink[700],
        borderRadius: BorderRadius.circular(20),
      ),
      child: GestureDetector(
        onTap: () {
          showNotification();
        },
        child: Text.rich(
          TextSpan(
            style: TextStyle(color: Colors.white),
            children: [
              TextSpan(text: "A Summer Surpise\n"),
              TextSpan(
                text: "Cashback 20%",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(24),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void showNotification() async {
  var notificationTime = DateTime.now().add(Duration(seconds: 10));
  var androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'loc_notification', 'loc_notification', 'Store nearby notification',
      icon: 'myntra_logo',
      sound: RawResourceAndroidNotificationSound('notification'),
      largeIcon: DrawableResourceAndroidBitmap('myntra_logo'));
  var platformChannelSpecifics =
      NotificationDetails(android: androidPlatformChannelSpecifics);
  await flutterLocalNotificationsPlugin.show(
      0,
      'Tryon Nearby',
      'An item you want to try-on is nearby. Visiting?',
      platformChannelSpecifics,
      payload: 'item x');
}
