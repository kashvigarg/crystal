import 'package:crystal/constants/themes.dart';
import 'package:crystal/widgets/data_title.dart';
import 'package:crystal/widgets/swipe_tab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0,
          actions: [Icon(Icons.info)],
          title: Text(
            "Crystal",
            style: TextStyle(color: Colors.black, letterSpacing: 2),
            textScaleFactor: 2,
          ),
        ),
        drawer: Drawer(),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [newsWidget(), catergoryWidget(), swipeTab(context)],
              ),
            )),
      ),
    );
  }
}

Widget catergoryWidget() {
  return Column(
    children: [
      SizedBox(
        height: 20,
      ),
      Text(
        "Browse by Categories",
        style: TextStyle(color: Colors.black),
        textScaleFactor: 2,
      ),
      SingleChildScrollView(
        child: Column(
          children: [
            DataTitle(
                image: 'assets/images/constellation.jpg',
                title: "Constellations"),
            DataTitle(image: 'assets/images/galaxy.jpg', title: "Galaxies"),
            DataTitle(
                image: 'assets/images/constellation.jpg',
                title: "Constellations"),
            DataTitle(image: 'assets/images/galaxy.jpg', title: "Galaxies"),
          ],
        ),
      ),
    ],
  );
}

Widget newsWidget() {
  return Column(
    children: [
      SizedBox(
        height: 20,
      ),
      Text(
        "Browse by Recent",
        style: TextStyle(color: Colors.black),
        textScaleFactor: 2,
      ),
      carouselWidget()
    ],
  );
}

Widget carouselWidget() {
  final pageController = PageController();
  return SizedBox(
    height: 200,
    child: PageView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => AnimatedBuilder(
            animation: pageController,
            builder: ((context, child) {
              return DataTitle(
                  image: 'assets/images/galaxy.jpg', title: "Galaxies");
            }))),
  );
}
