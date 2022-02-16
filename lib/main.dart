import 'package:flutter/material.dart';
import 'package:login_page/notification/notification_service.dart';
import 'package:login_page/pages/HomePage.dart';
import 'package:login_page/pages/choosefood.dart';
import 'package:login_page/pages/loginPage.dart';


void main() {

  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LoginPage(),
        '/home-page': (context) => HomePages(),
        '/choose-food':(context) => ChooseFood(),
      },
      // home: LoginPage(),
    );
  }
}
