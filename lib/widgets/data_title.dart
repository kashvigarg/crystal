// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:crystal/constants/size_config.dart';
import 'package:crystal/constants/themes.dart';
import 'package:flutter/material.dart';

class DataTitle extends StatelessWidget {
  const DataTitle({Key? key, required this.image, required this.title})
      : super(key: key);
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: SizeConfig.height * 0.08,
        // width: SizeConfig.width * 0.1,
        child: Center(
          child: Text(
            title,
            style: AppThemes.subHeadingStyle,
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(image),
                opacity: 0.7,
                fit: BoxFit.fill,
                colorFilter: ColorFilter.srgbToLinearGamma())),
      ),
    );
  }
}
