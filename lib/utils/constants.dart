import 'dart:ui';

import 'package:devdeejay_portfolio_app/screens/contact/contact_screen.dart';
import 'package:devdeejay_portfolio_app/screens/experience/experience_screen.dart';
import 'package:devdeejay_portfolio_app/screens/home/home_screen.dart';
import 'package:devdeejay_portfolio_app/screens/learn/library_screen.dart';
import 'package:devdeejay_portfolio_app/screens/project/project_screen.dart';
import 'package:devdeejay_portfolio_app/utils/utils.dart';
import 'package:flutter/widgets.dart';

const kDarkGreyColor = const Color(0xFF1A1B1F);

final List<String> navBarItems = [
  "Home",
  "Projects",
  "Experience",
  "Library",
  "Contact"
];

final List<Widget> listOfSocialMediaWidgets = [
  Padding(
    padding: EdgeInsets.all(16),
    child: buildImage("assets/images/github_icon.png", 32, () {
      launchURL("https://github.com/devDeejay");
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
      launchURL("https://www.linkedin.com/in/devdeejay/");
    }),
  ),
  Padding(
    padding: EdgeInsets.all(16),
    child: buildImage("assets/images/stackoverflow_icon.png", 32, () {
      launchURL("https://stackoverflow.com/users/6145568/devdeejay");
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
      launchURL("https://www.instagram.com/dhanajay__trivedi/");
    }),
  ),
];

final List<Widget> listOfNavBarWidgets = [
  homeScreenWidget,
  projectScreenWidget,
  experienceScreenWidget,
  learnScreenWidget,
  contactScreenWidget,
];

final Widget homeScreenWidget = HomeScreenWidget();
final Widget projectScreenWidget = ProjectScreenWidget();
final Widget experienceScreenWidget = ExperienceScreenWidget();
final Widget learnScreenWidget = LibraryScreenWidget();
final Widget contactScreenWidget = ContactScreenWidget();
