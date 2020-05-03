import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExperienceScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("building home");

    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: screenWidth,
              height: screenHeight,
              child: Center(
                child: SizedBox(
                  child: TyperAnimatedTextKit(
                      pause: Duration(seconds: 1),
                      isRepeatingAnimation: false,
                      text: ["Experience"],
                      textStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.08,
                          color: Colors.redAccent,
                          fontFamily: 'playlist'),
                      textAlign: TextAlign.start,
                      alignment:
                          AlignmentDirectional.topStart // or Alignment.topLeft
                      ),
                ),
              ),
            ),
            Container(
              color: Colors.blueAccent,
              width: screenWidth,
              height: screenHeight,
              child: Center(
                child: SizedBox(
                  child: TyperAnimatedTextKit(
                      pause: Duration(seconds: 1),
                      isRepeatingAnimation: false,
                      text: [
                        "Hello",
                        "I am",
                        "devDeejay",
                        "Flutter Developer",
                        "Android Developer",
                        "and you can call me DJ",
                        "devDeejay"
                      ],
                      textStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.08,
                          color: Colors.white,
                          fontFamily: 'playlist'),
                      textAlign: TextAlign.start,
                      alignment:
                          AlignmentDirectional.topStart // or Alignment.topLeft
                      ),
                ),
              ),
            ),
            Container(
              color: Colors.greenAccent,
              width: screenWidth,
              height: screenHeight,
              child: Center(
                child: SizedBox(
                  child: TyperAnimatedTextKit(
                      pause: Duration(seconds: 1),
                      isRepeatingAnimation: false,
                      text: [
                        "Hello",
                        "I am",
                        "devDeejay",
                        "Flutter Developer",
                        "Android Developer",
                        "and you can call me DJ",
                        "devDeejay"
                      ],
                      textStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.08,
                          color: Colors.white,
                          fontFamily: 'playlist'),
                      textAlign: TextAlign.start,
                      alignment:
                          AlignmentDirectional.topStart // or Alignment.topLeft
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
