import 'package:flutter/material.dart';
import 'package:workout_app/UI/common/constant.dart';
import 'package:workout_app/UI/modules/workout/workout.dart';

class WorkoutItem extends StatelessWidget {
  final String nameWorkout, rep;

  WorkoutItem({@required this.nameWorkout, @required this.rep});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => WorkoutExcercise()));
      },
      child: Padding(
        padding: EdgeInsets.only(left: 16, bottom: 16),
        child: Row(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('assets/images/pushup.png'),
                      fit: BoxFit.cover)),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    nameWorkout,
                    style: kSmallTextStyle,
                  ),
                  Text(
                    '$rep',
                    style: kRepStyle,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

List<Widget> upperInfo = [
  Column(
    children: [
      WorkoutItem(nameWorkout: wBurpee, rep: '15 reps'),
      WorkoutItem(nameWorkout: wJjack, rep: '1:00 min'),
      WorkoutItem(nameWorkout: wPushup, rep: '15 reps'),
      WorkoutItem(nameWorkout: wHighknee, rep: '0:30 min'),
      WorkoutItem(nameWorkout: wMountain, rep: '0:32 min'),
      WorkoutItem(nameWorkout: wPlank, rep: '0:48 min'),
    ],
  )
];
