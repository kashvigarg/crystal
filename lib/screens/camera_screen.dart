import 'package:crystal/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});
  static String routeName = 'cam';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(child: Text("Camera"), onPressed: () {}),
      ),
    );
  }
}
