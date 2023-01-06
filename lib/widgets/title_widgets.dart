import 'package:crystal/widgets/data_title.dart';
import 'package:flutter/material.dart';

Widget titleWidget() {
  return ListView(
    children: [
      DataTitle(
          image: 'assets/images/constellation.jpg', title: "Constellations"),
      DataTitle(image: 'assets/images/galaxy.jpg', title: "Galaxies"),
      DataTitle(
          image: 'assets/images/constellation.jpg', title: "Constellations"),
      DataTitle(image: 'assets/images/galaxy.jpg', title: "Galaxies"),
    ],
  );
}
