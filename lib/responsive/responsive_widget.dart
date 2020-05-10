import 'package:devdeejay_portfolio_app/responsive/sizing_information.dart';
import 'package:devdeejay_portfolio_app/utils/ui_utils.dart';
import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(
      BuildContext buildContext, SizingInformation sizingInformation) builder;

  const ResponsiveBuilder({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var sizingInformation = SizingInformation(
      orientation: mediaQuery.orientation,
      deviceScreenType: getDeviceType(mediaQuery),
    );
    return builder(context, sizingInformation);
  }
}
