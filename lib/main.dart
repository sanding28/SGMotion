import 'package:flutter/material.dart';
import 'package:login_page/homePage.dart';
import 'package:login_page/loginPage.dart';

void main() {
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
        'home-page': (context) => HomePage(),
      },
      // home: LoginPage(),
    );
  }
}
