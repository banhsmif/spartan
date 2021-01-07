import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workout_app/UI/modules/packageWorkout/packageUI.dart';
import 'UI/Cuong/screens/nav_screen.dart';

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
      home:NavScreen(),
      // home: OneHITTWonder(),
    );
  }
}
