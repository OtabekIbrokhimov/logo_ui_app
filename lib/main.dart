import 'package:flutter/material.dart';
import 'package:logo_ui/Second%20Page.dart';
import 'package:logo_ui/home_page.dart';
import 'package:logo_ui/sign_%20in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: HomePage(

      ),
      routes: {
        HomePage.id: (context) => HomePage(),
        SecondPage.id: (context) => SecondPage(),
        SignInPage.id: (context) => SignInPage(),
      },
     );
  }
}
