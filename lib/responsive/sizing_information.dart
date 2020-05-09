import 'package:devdeejay_portfolio_app/enums/device_screen_type.dart';
import 'package:flutter/cupertino.dart';

class SizingInformation {
  final Orientation orientation;
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final localWidgetsize;

  SizingInformation(
      {this.orientation,
      this.deviceScreenType,
      this.screenSize,
      this.localWidgetsize});

  @override
  String toString() {
    return 'SizingInformation{orientation: $orientation, deviceScreenType: $deviceScreenType, screenSize: $screenSize, localWidgetsize: $localWidgetsize}';
  }
}
