import 'package:devdeejay_portfolio_app/utils/constants.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'screens/main/main_screen.dart';

void main() {
  /*runApp(DevicePreview(
    enabled: false,
    builder: (BuildContext context) {
      return MyApp();
    },
  ));*/

  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*builder: DevicePreview.appBuilder,*/
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
