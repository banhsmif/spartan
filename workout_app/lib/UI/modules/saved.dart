import 'package:flutter/material.dart';

import 'packageWorkout/packageUI.dart';

class Saved extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Saved Workout',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SavedBody(),
    );
  }
}

class SavedBody extends StatefulWidget {
  @override
  _SavedBodyState createState() => _SavedBodyState();
}

class _SavedBodyState extends State<SavedBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [],
    );
  }
}

List<Widget> saved = [
   FatRemoval(),
  FullBodyMoneyMaker(),
  MissionFit(),
];
