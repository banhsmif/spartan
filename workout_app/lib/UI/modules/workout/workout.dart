import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workout_app/UI/common/component/header.dart';
import 'package:workout_app/UI/common/constant.dart';

class WorkoutExcercise extends StatelessWidget {
  String pic, name;
  WorkoutExcercise({this.name, this.pic});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(padding: const EdgeInsets.only(top: 0), children: <Widget>[
        Header(pic: pic),
        SizedBox(
          height: 25,
        ),
        TittleWorkout(
          name: name,
        ),
      ]),
      // floatingActionButton: Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: [
      //     Padding(
      //       padding: EdgeInsets.only(bottom: 20, left: 20),
      //       child: FloatingActionButton(
      //         onPressed: () {},
      //         backgroundColor: Colors.white,
      //         child: Icon(
      //           FontAwesomeIcons.heart,
      //           color: Colors.black,
      //         ),
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}

class TittleWorkout extends StatelessWidget {
  final String name;

  TittleWorkout({this.name});

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
          SizedBox(
            height: 30,
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
            style: kSmallTextStyle,
          )
        ],
      ),
    );
  }
}

List<Widget> detailChestWorkout = [
  WorkoutExcercise(
    name: 'Push Ups',
    pic: '/assets/images/pushup.png',
  ),
  WorkoutExcercise(
    name: 'Decline Ups',
    pic: '/assets/images/pushup.png',
  ),
  WorkoutExcercise(
    name: 'Narrow Ups',
    pic: '/assets/images/pushup.png',
  ),
  WorkoutExcercise(
    name: 'Clap Push Ups',
    pic: '/assets/images/pushup.png',
  ),
  WorkoutExcercise(
    name: 'In Out Push Ups',
    pic: '/assets/images/pushup.png',
  ),
  WorkoutExcercise(
    name: 'In Out Push Ups',
    pic: '/assets/images/pushup.png',
  )
];
