import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

buildImage(String path, double size, [Function onPressed]) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(path),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}

launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
