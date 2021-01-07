import 'package:flutter/material.dart';
import 'package:workout_app/UI/common/component/header.dart';
import 'package:workout_app/UI/common/component/item.dart';
import 'package:workout_app/UI/common/component/tittle.dart';

class FatRemoval extends StatelessWidget {
  final String name, level;
  final int round, excercise;

  FatRemoval({this.name, this.round, this.excercise, this.level});
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
        WorkoutItem(nameWorkout: 'Squats', rep: 20),
        WorkoutItem(nameWorkout: 'Mountain Climbers', rep: 40),
        WorkoutItem(nameWorkout: 'Lunges', rep: 20),
        WorkoutItem(nameWorkout: 'Push Ups', rep: 10),
        WorkoutItem(nameWorkout: 'Plank', rep: 20),
        WorkoutItem(nameWorkout: 'Pike Push Ups', rep: 10),
      ]),
    );
  }
}
