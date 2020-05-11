import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:devdeejay_portfolio_app/screens/widgets/animated_screen_entry_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("building Contact Screen");
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
                        pause: Duration(seconds: 1),
                        isRepeatingAnimation: false,
                        text: [
                          "Coming Soon",
                        ],
                        textStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.08,
                            color: Colors.white,
                            fontFamily: 'playlist'),
                        textAlign: TextAlign.start,
                        alignment: AlignmentDirectional.topStart),
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
