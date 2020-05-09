import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:devdeejay_portfolio_app/screens/widgets/animated_screen_entry_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProjectScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height * 0.8;

    return AnimatedScreenEntryWidget(
      child: Container(
        color: Colors.green,
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
                        text: [
                          "My Projects",
                        ],
                        textStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.08,
                            color: Colors.black,
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
