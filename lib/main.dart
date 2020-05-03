import 'package:devdeejay_portfolio_app/screens/main/main_screen.dart';
import 'package:devdeejay_portfolio_app/utils/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'devDeejay',
      theme: ThemeData(
        primaryColor: kDarkGreyColor,
        canvasColor: kDarkGreyColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'montserrat',
      ),
      home: MainScreenPage(),
    );
  }
}
