import 'package:flutter/material.dart';
import 'package:workout_app/UI/common/component/header.dart';
import 'package:workout_app/UI/common/component/item.dart';
import 'package:workout_app/UI/common/component/tittle.dart';
import 'package:workout_app/UI/common/constant.dart';

class FatRemoval extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return noidung('Fat removal', 'assets/images/FatRemoval.png');
  }
}

class FullBodyMoneyMaker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return noidung(
        'Full Body Money Maker', 'assets/images/FullBodyMoneyMaker.png');
  }
}

class MissionFit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return noidung('Mission Fit', 'assets/images/MissionFit.png');
  }
}

class HangoverFit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return noidung('Hangover Fit', 'assets/images/HangoverFit.png');
  }
}

class OneHITTWonder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return noidung('One HITT Wonder', 'assets/images/OneHITTWonder.png');
  }
}

class BodyShock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return noidung('Body Shock', 'assets/images/BodyShock.png');
  }
}

class BodyKiller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return noidung('Body Killer', 'assets/images/BodyKiller.png');
  }
}

class FullBodyHype extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return noidung('Full Body Hype', 'assets/images/FullBodyHype.png');
  }
}

class MillionaireSquats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return noidung('Millionaire Squats', 'assets/images/MillionaireSquats.png');
  }
}

class CantWalk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return noidung('Can\'t Walk', 'assets/images/CantWalk.png');
  }
}

Widget noidung(String name, String image) => Scaffold(
      body: ListView(padding: const EdgeInsets.only(top: 0), children: <Widget>[
        Header(
          pic: image,
        ),
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
        WorkoutItem(nameWorkout: wPushup, rep: '15 reps'),
        WorkoutItem(nameWorkout: wMountain, rep: '40 seconds'),
        WorkoutItem(nameWorkout: wLunges, rep: '20 reps'),
        WorkoutItem(nameWorkout: wPushup, rep: '10 reps'),
        WorkoutItem(nameWorkout: wPike, rep: '10 reps'),
      ]),
    );
