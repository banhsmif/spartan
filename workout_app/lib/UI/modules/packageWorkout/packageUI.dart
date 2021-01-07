import 'package:flutter/material.dart';
import 'package:workout_app/UI/common/component/header.dart';
import 'package:workout_app/UI/common/component/item.dart';
import 'package:workout_app/UI/common/component/tittle.dart';
import 'package:workout_app/UI/common/constant.dart';

class FatRemoval extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: const EdgeInsets.only(top: 0), children: <Widget>[
        Header(),
        SizedBox(
          height: 25,
        ),
        TittlePack(
          name: 'Fat Removal',
          round: 4,
          excercise: 6,
          level: 'No equipment',
        ),
        SizedBox(
          height: 22,
        ),
        WorkoutItem(nameWorkout: wBurpee, rep: 20),
        WorkoutItem(nameWorkout: wJjack, rep: 40),
        WorkoutItem(nameWorkout: wPushup, rep: 10),
        WorkoutItem(nameWorkout: wHighknee, rep: 30),
        WorkoutItem(nameWorkout: wMountain, rep: 30),
        WorkoutItem(nameWorkout: wPike, rep: 10),
      ]),
    );
  }
}

class FullBodyMoneyMaker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: const EdgeInsets.only(top: 0), children: <Widget>[
        Header(),
        SizedBox(
          height: 25,
        ),
        TittlePack(
          name: 'FullBodyMoneyMaker',
          round: 4,
          excercise: 6,
          level: 'No equipment',
        ),
        SizedBox(
          height: 22,
        ),
        WorkoutItem(nameWorkout: wSquats, rep: 20),
        WorkoutItem(nameWorkout: wMountain, rep: 40),
        WorkoutItem(nameWorkout: wLunges, rep: 20),
        WorkoutItem(nameWorkout: wPushup, rep: 10),
        WorkoutItem(nameWorkout: wPlank, rep: 20),
        WorkoutItem(nameWorkout: wPike, rep: 10),
      ]),
    );
  }
}

class MissionFit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: const EdgeInsets.only(top: 0), children: <Widget>[
        Header(),
        SizedBox(
          height: 25,
        ),
        TittlePack(
          name: 'FullBodyMoneyMaker',
          round: 3,
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
  }
}
