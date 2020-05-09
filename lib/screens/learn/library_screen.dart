import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:devdeejay_portfolio_app/screens/widgets/animated_screen_entry_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LibraryScreenWidget extends StatefulWidget {
  @override
  _LibraryScreenWidgetState createState() => _LibraryScreenWidgetState();
}

class _LibraryScreenWidgetState extends State<LibraryScreenWidget> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height * 0.8;

    return AnimatedScreenEntryWidget(
      child: Container(
        color: Colors.blue,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: screenWidth,
                height: screenHeight,
                child: Center(
                  child: SizedBox(
                    child: TyperAnimatedTextKit(
                        pause: Duration(seconds: 3),
                        isRepeatingAnimation: false,
                        text: [
                          "Learn with DJ",
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
