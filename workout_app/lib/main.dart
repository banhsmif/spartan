import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'UI/modules/packageWorkout/packageUI.dart';

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
      home:FatRemoval(),
    );
  }
}
