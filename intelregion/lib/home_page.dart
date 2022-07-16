import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:intelregion/Pages/about_us.dart';

import 'Pages/entertainment_screen.dart';
import 'Pages/gist_screen.dart';
import 'Pages/home_screen.dart';
import 'Pages/job_screen.dart';
import 'Pages/news_screen.dart';
import 'Pages/scholarship_screen.dart';
import 'Pages/sport_screen.dart';
import 'Pages/tech_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ScreenHiddenDrawer> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          selectedStyle: TextStyle(
            color: Colors.green,
            fontSize: 25,
          ),
          baseStyle: TextStyle(
              color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
          name: 'Home',
          colorLineSelected: Colors.green,
        ),
        Home(),
      ),

      //For the job
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          selectedStyle: TextStyle(
            color: Colors.lightGreen,
            fontSize: 25,
          ),
          baseStyle: TextStyle(
              color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
          name: 'Jobs',
          colorLineSelected: Colors.green,
        ),
        Job(),
      ),

      //for Scholarship
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          selectedStyle: TextStyle(
            color: Colors.yellow,
            fontSize: 25,
          ),
          baseStyle: TextStyle(
              color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
          name: 'Scholarship',
          colorLineSelected: Colors.yellowAccent,
        ),
        Scholarship(),
      ),

      //Entertainment
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          selectedStyle: TextStyle(
            color: Colors.purple,
            fontSize: 25,
          ),
          baseStyle: TextStyle(
              color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
          name: 'Entertainment',
          colorLineSelected: Colors.purple,
        ),
        Entertainment(),
      ),

      //News
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          selectedStyle: TextStyle(
            color: Colors.red,
            fontSize: 25,
          ),
          baseStyle: TextStyle(
              color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
          name: 'News',
          colorLineSelected: Colors.red,
        ),
        News(),
      ),

      //Gist
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          selectedStyle: TextStyle(
            color: Colors.pink,
            fontSize: 25,
          ),
          baseStyle: TextStyle(
              color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
          name: 'Lifestyle',
          colorLineSelected: Colors.pink,
        ),
        Lifestyle(),
      ),

      //sport

      ScreenHiddenDrawer(
        ItemHiddenMenu(
          selectedStyle: TextStyle(
            color: Colors.yellowAccent,
            fontSize: 25,
          ),
          baseStyle: TextStyle(
              color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
          name: 'Lifestyle',
          colorLineSelected: Colors.yellowAccent,
        ),
        Sports(),
      ),

      //technology
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          selectedStyle: TextStyle(
            color: Colors.blueGrey,
            fontSize: 25,
          ),
          baseStyle: TextStyle(
              color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
          name: 'Technologies',
          colorLineSelected: Colors.blueGrey,
        ),
        Tech(),
      ),

      //About Us
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          selectedStyle: TextStyle(
            color: Colors.lightGreen,
            fontSize: 25,
          ),
          baseStyle: TextStyle(
              color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
          name: 'About Us',
          colorLineSelected: Colors.lightGreen,
        ),
        AboutUs(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Spacer(),
            Image.asset('assets/images/images.png', height: 55),
            Text(
              'Intel Region',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  fontSize: 25,
                  color: Colors.green),
            ),
            Spacer(),
          ],
        ),
      ),
      body: buildHiddenDrawerMenu(),
    );
  }

  HiddenDrawerMenu buildHiddenDrawerMenu() {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.white,
      screens: _pages,
      initPositionSelected: 0,
      backgroundColorAppBar: Colors.green,
      isDraggable: true,
      slidePercent: 50,
    );
  }
}
