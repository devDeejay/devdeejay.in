import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:devdeejay_portfolio_app/screens/widgets/animated_screen_entry_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("building home");

    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height * 0.8;

    return AnimatedScreenEntryWidget(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: screenWidth,
                height: screenHeight,
                child: Center(
                  child: SizedBox(
                    child: TyperAnimatedTextKit(
                        pause: Duration(milliseconds: 500),
                        isRepeatingAnimation: false,
                        text: [
                          "Hello",
                          "I am",
                          "Dhananjay",
                          "Flutter Developer",
                          "Medium Writer",
                          "Android Developer",
                          "and you can call me DJ",
                          "devDeejay"
                        ],
                        textStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.08,
                            color: Colors.white,
                            fontFamily: 'playlist'),
                        textAlign: TextAlign.start,
                        alignment: AlignmentDirectional
                            .topStart // or Alignment.topLeft
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
