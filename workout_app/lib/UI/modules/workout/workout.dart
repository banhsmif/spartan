import 'package:flutter/material.dart';
import 'package:workout_app/UI/common/component/header.dart';
import 'package:workout_app/UI/common/constant.dart';

class WorkoutExcercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: const EdgeInsets.only(top: 0), children: <Widget>[
        Header(),
        SizedBox(
          height: 25,
        ),
        TittleWorkout(
          name: 'Push up',
          description: 'nothing',
        )
      ]),
    );
  }
}

class TittleWorkout extends StatelessWidget {
  final String name, description;

  TittleWorkout({this.name, this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            name,
            style: kMainTittleStyle,
          ),
          Text(
            description,
            style: kSmallTextStyle,
          )
        ],
      ),
    );
  }
}
