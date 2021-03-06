import 'package:flutter/material.dart';

class OrientationLayout extends StatelessWidget {
  Widget landscape;
  Widget portrait;

  OrientationLayout({Key key, this.landscape, this.portrait}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.landscape) {
      return landscape ?? portrait;
    }

    return portrait;
  }
}
