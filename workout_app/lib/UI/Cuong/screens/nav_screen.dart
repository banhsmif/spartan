import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workout_app/UI/Cuong/widgets/custom_tab_bar.dart';
import 'package:workout_app/UI/bmi/screens/input_page.dart';
import 'package:workout_app/UI/calender/calendar.dart';

import 'galery.dart';
import 'home.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomePage(),
    Categories(),
    InputPage(),
    Calendar(),
  ];
  final List<IconData> _icons = const [
    Icons.home_filled,
    FontAwesomeIcons.listAlt,
    FontAwesomeIcons.calculator,
    Icons.calendar_today_rounded,
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: Container(
          // padding: const EdgeInsets.only(bottom: 12.0),
          color: Colors.white,
          child: CustomTabBar(
            icons: _icons,
            selectedIndex: _selectedIndex,
            onTap: (index) => setState(() => _selectedIndex = index),
          ),
        ),
      ),
    );
  }
}
