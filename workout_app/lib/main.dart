import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workout_app/UI/modules/combo/combo_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login',
      home: WorkoutPack(
        name: 'Push up',
        level: 'Beginner',
      ),
    );
  }
}
