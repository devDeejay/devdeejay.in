import 'package:devdeejay_portfolio_app/responsive/orientation_layout.dart';
import 'package:devdeejay_portfolio_app/responsive/screen_type_layout.dart';
import 'package:devdeejay_portfolio_app/screens/main/main_screen_viewmodel.dart';
import 'package:devdeejay_portfolio_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MainScreenPage extends StatefulWidget {
  @override
  _MainScreenPageState createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreenPage> {
  MainScreenViewModel mainScreenViewModel;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainScreenViewModel>.reactive(
      viewModelBuilder: () => MainScreenViewModel(),
      onModelReady: (model) => model.initialise(),
      builder: (buildContext, model, child) {
        mainScreenViewModel = model;
        return ScreenTypeLayout(
          mobile: OrientationLayout(
            portrait: _buildMobilePortraitLayout(context),
            landscape: _buildMobilePortraitLayout(context),
          ),
          tablet: OrientationLayout(
            portrait: _buildMobilePortraitLayout(context),
            landscape: _buildLargeScreenLayout(context),
          ),
          desktop: OrientationLayout(
            landscape: _buildLargeScreenLayout(context),
            portrait: _buildLargeScreenLayout(context),
          ),
        );
      },
    );
  }

  Container _buildMobilePortraitLayout(BuildContext buildContext) {
    return Container(
      color: kDarkGreyColor,
      child: Scaffold(
        drawer: _buildMobileDrawer(buildContext),
        appBar: _buildMobileAppBar(),
        body: Column(
          children: [
            _buildContentBody(),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileDrawer(BuildContext buildContext) {
    List<Widget> listOfDrawerWidgets = [];

    for (int i = 0; i < navBarItems.length; i++) {
      listOfDrawerWidgets.add(_buildMobileDrawerTextItem(navBarItems[i], () {
        mainScreenViewModel.setScreenToShow(i);
        Navigator.pop(buildContext);
      }));
      listOfDrawerWidgets.add(SizedBox(
        width: 56,
      ));
    }

    return Container(
      child: Drawer(
        child: Row(
          children: [
            _buildVerticalListOfSocialMediaIcons(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: listOfDrawerWidgets,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVerticalListOfSocialMediaIcons() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: listOfSocialMediaWidgets,
        ),
      ),
    );
  }

  AppBar _buildMobileAppBar() {
    return AppBar(
      elevation: 0,
      title: Container(
        height: 56,
        child: Text(
          "devdeejay",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 32, color: Colors.white, fontFamily: 'playlist'),
        ),
      ),
    );
  }

  Widget _buildLargeScreenLayout(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        _buildLeftSocialMediaSideBar(),
        _buildLargeScreenBody(context)
      ],
    ));
  }

  Widget _buildLargeScreenBody(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: <Widget>[_buildTopNavBar(context), _buildContentBody()],
        ),
      ),
    );
  }

  Expanded _buildContentBody() {
    return Expanded(
      child: listOfNavBarWidgets[mainScreenViewModel.currentScreenIndex],
    );
  }

  Widget _buildTopNavBar(BuildContext context) {
    List<Widget> listOfNavBarWidgets = [];

    for (int i = 0; i < navBarItems.length; i++) {
      listOfNavBarWidgets.add(_buildTopNavBarTextItem(navBarItems[i], (e) {
        mainScreenViewModel.setScreenToShow(i);
      }));
      listOfNavBarWidgets.add(SizedBox(
        width: 56,
      ));
    }

    return Container(
      height: 80.5,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 0.4, color: Colors.white))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: listOfNavBarWidgets,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMobileDrawerTextItem(String title, Function onTap) =>
      GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            title.toUpperCase(),
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
      );

  Widget _buildTopNavBarTextItem(String title, Function onHover) => MouseRegion(
        onHover: onHover,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            title.toUpperCase(),
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
      );

  Widget _buildLeftSocialMediaSideBar() {
    return Container(
      width: 96,
      decoration: BoxDecoration(
          border: Border(
        right: BorderSide(width: 0.5, color: Colors.white.withOpacity(0.6)),
      )),
      child: Column(
        children: <Widget>[
          _buildTopLeftLogo(),
          _buildSocialMediaIcons(),
        ],
      ),
    );
  }

  Widget _buildSocialMediaIcons() {
    return Expanded(
      child: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: listOfSocialMediaWidgets,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTopLeftLogo() {
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
