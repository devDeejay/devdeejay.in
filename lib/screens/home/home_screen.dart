import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
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
                alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                ),
          ),
        ],
      ),
    );
  }
}
