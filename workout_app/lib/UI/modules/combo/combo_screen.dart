import 'package:flutter/material.dart';
import 'package:workout_app/UI/modules/combo/component/tittle.dart';
import 'component/header.dart';
import 'component/item.dart';

//Done nhe e!

class WorkoutPack extends StatelessWidget {
  final String name, level;
  final int round, excercise;

  WorkoutPack({this.name, this.round, this.excercise,this.level});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0.0,
      //   leading: FlatButton(
      //     child: Icon(
      //       Icons.arrow_back_ios,
      //       color: Colors.white,
      //     ),
      //     onPressed: () {},
      //   ),
      // ),
      body: ListView(padding: const EdgeInsets.only(top: 0), children: <Widget>[
        Header(),
        SizedBox(
          height: 25,
        ),
        TittlePack(
          name: name,
          round: round,
          excercise: excercise,
          level: level,
        ),
        SizedBox(
          height: 22,
        ),
        WorkoutItem(nameWorkout: 'Push up', rep: 20),
        WorkoutItem(nameWorkout: 'Push up', rep: 20),
        WorkoutItem(nameWorkout: 'Push up', rep: 20),
        WorkoutItem(nameWorkout: 'Push up', rep: 20),
        WorkoutItem(nameWorkout: 'Push up', rep: 20),
        WorkoutItem(nameWorkout: 'Push up', rep: 20),
      ]),
    );
  }
}
