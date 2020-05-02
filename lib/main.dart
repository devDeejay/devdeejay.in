import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFFF0000),
        canvasColor: Color(0xFF000000),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.height * 0.5,
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1000),
              color: Colors.black,
              boxShadow: [
                BoxShadow(
                    offset: Offset(4, 4), color: Colors.red, blurRadius: 8),
                BoxShadow(
                    offset: Offset(-4, -4),
                    color: Colors.red.withOpacity(0.85),
                    blurRadius: 8)
              ]),
          child: Center(
            child: Text(
              "i am\ndevDeejay",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red, fontSize: 32),
            ),
          ),
        ),
      ),
    );
  }
}
