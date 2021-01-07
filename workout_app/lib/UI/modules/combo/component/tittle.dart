import 'package:flutter/material.dart';
import 'package:workout_app/UI/common/constant.dart';

class TittlePack extends StatelessWidget {
  final String name,level;
  final int round, excercise;

  TittlePack({this.name, this.round, this.excercise, this.level});

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
          Text(level,
          style: kLvStyle,),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Text(
                  '$round rounds',
                  style: kSmallTextStyle,
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  '$excercise Excercises',
                  style: kSmallTextStyle,
                ),
              )
            ],
          ),
          
        ],
      ),
    );
  }
}

// Icon(Icons.star, color: Color(0xffFFCE31));
