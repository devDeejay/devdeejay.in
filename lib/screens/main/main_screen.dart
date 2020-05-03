import 'package:devdeejay_portfolio_app/screens/home/home_screen.dart';
import 'package:devdeejay_portfolio_app/screens/main/main_screen_viewmodel.dart';
import 'package:devdeejay_portfolio_app/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';

class MainScreenPage extends StatelessWidget {
  BuildContext buildContext;

  final List<String> navBarItems = [
    "Home",
    "Projects",
    "Experience",
    "Learn",
    "Contact"
  ];
  static final List<Widget> listOfWidgets = [HomeScreenWidget()];
  static int indexToShow = 0;
  Widget widgetToShow = listOfWidgets[indexToShow];

  @override
  Widget build(BuildContext context) {
    buildContext = context;
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[buildLeftSideBar(), buildMidSection(context)],
      ),
    );
  }

  Widget buildMidSection(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: <Widget>[
            buildNavBar(context),
            Expanded(
              child: ViewModelProvider<HomeScreenViewModel>.withConsumer(
                viewModel: HomeScreenViewModel(),
                builder: (context, viewmodel, child) {
                  return widgetToShow;
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildNavBar(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 0.5, color: Colors.white))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buildNavBarTextItem("Home"),
                buildNavBarTextItem("Projects"),
                buildNavBarTextItem("Share"),
                buildNavBarTextItem("Contact"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Text buildNavBarTextItem(String title) => Text(
        title.toUpperCase(),
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      );

  Widget buildLeftSideBar() {
    return Container(
      width: 96,
      decoration: BoxDecoration(
          border: Border(
        right: BorderSide(width: 0.5, color: Colors.white.withOpacity(0.6)),
      )),
      child: Column(
        children: <Widget>[
          buildTopLeftLogo(),
          buildSocialMediaIcons(),
        ],
      ),
    );
  }

  Widget buildSocialMediaIcons() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: buildImage("assets/images/github_icon.png", 32, () {
              launchURL("https://medium.com/@devDeeJay");
            }),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: buildImage("assets/images/medium_icon.png", 32, () {
              launchURL("https://medium.com/@devDeeJay");
            }),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: buildImage("assets/images/linkedin_icon.png", 32, () {
              launchURL("https://medium.com/@devDeeJay");
            }),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: buildImage("assets/images/facebook_icon.png", 32, () {
              launchURL("https://www.facebook.com/dhananjayt772");
            }),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: buildImage("assets/images/instagram_icon.png", 32, () {
              launchURL("https://medium.com/@devDeeJay");
            }),
          ),
        ],
      ),
    );
  }

  Padding buildSingleSocialMediaIcon() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Icon(
        Icons.description,
        color: Colors.white,
        size: 24,
      ),
    );
  }

  Widget buildTopLeftLogo() {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Colors.white.withOpacity(0.6), width: 0.5))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "d",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 42, color: Colors.white, fontFamily: 'playlist'),
        ),
      ),
    );
  }
}
