import 'package:login_page/notification/notification_service.dart';
import 'package:timezone/data/latest.dart' as tz;
// import 'package:timezone/timezone.dart' as tz;
import 'package:flutter/material.dart';
import 'package:login_page/customWidget/custom_button.dart';

class ChooseFood extends StatefulWidget {
  const ChooseFood({ Key? key }) : super(key: key);

  @override
  _ChooseFoodState createState() => _ChooseFoodState();
}

class _ChooseFoodState extends State<ChooseFood> {
  @override
  void initState() {
    super.initState();

    tz.initializeTimeZones();
  }

  @override
  Widget build(BuildContext context) {

    Widget topImage() {
      return Container(
        height: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage('assets/rendang.jpg'),
            fit: BoxFit.cover,
          )
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          topImage(),
          CustomButton(
            tittle: 'Simple Notification',
            margin: EdgeInsets.only(top: 40), 
            onPressed: (){
              NotificationService().showNotification(1, "Notifications", "Makanan sudah siap dipesan", 10);
            },
          ),

          CustomButton(
            tittle: 'cancell Notification',
            margin: EdgeInsets.only(top: 40), 
            onPressed: (){
              NotificationService().cancelAllNotifications();
            },
          ),
        ],
      ),
    );
  }
}