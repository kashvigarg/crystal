import 'package:crystal/constants/size_config.dart';
import 'package:crystal/constants/themes.dart';
import 'package:crystal/screens/camera_screen.dart';
import 'package:crystal/screens/home_screen.dart';
import 'package:flutter/material.dart';

Widget swipeTab(BuildContext context) {
  return TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed(CameraScreen.routeName);
      },
      child: Container(
        height: SizeConfig.height * 0.02,
        width: SizeConfig.width * 0.08,
        child: Center(
            child: Text(
          "Swipe",
          style: TextStyle(color: Colors.white),
        )),
        color: Colors.black,
      ));
}
