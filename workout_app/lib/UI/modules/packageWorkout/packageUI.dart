import 'package:flutter/material.dart';
import 'package:workout_app/UI/common/component/header.dart';
import 'package:workout_app/UI/common/component/item.dart';
import 'package:workout_app/UI/common/component/tittle.dart';
import 'package:workout_app/UI/common/constant.dart';

class FatRemoval extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return noidung('Fat removal');
  }
}

class FullBodyMoneyMaker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return noidung('Full Body Money Maker');
  }
}

class MissionFit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return noidung('Mission Fit');
  }
}

class HangoverFit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return noidung('Hangover Fit');
  }
}

class OneHITTWonder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return noidung('One HITT Wonder');
  }
}

class BodyShock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return noidung('Body Shock');
  }
}

class BodyKiller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return noidung('Body Killer');
  }
}

class FullBodyHype extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return noidung('Full Body Hype');
  }
}

Widget noidung(String name) => Scaffold(
      body: ListView(padding: const EdgeInsets.only(top: 0), children: <Widget>[
        Header(),
        SizedBox(
          height: 25,
        ),
        TittlePack(
          name: name,
          round: 4,
          excercise: 5,
          level: 'No equipment',
        ),
        SizedBox(
          height: 22,
        ),
        WorkoutItem(nameWorkout: wPushup, rep: 15),
        WorkoutItem(nameWorkout: wMountain, rep: 40),
        WorkoutItem(nameWorkout: wLunges, rep: 20),
        WorkoutItem(nameWorkout: wPushup, rep: 10),
        WorkoutItem(nameWorkout: wPike, rep: 10),
      ]),
    );
