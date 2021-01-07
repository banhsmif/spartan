import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workout_app/UI/common/component/header.dart';
import 'package:workout_app/UI/common/component/item.dart';
import 'package:workout_app/UI/common/component/tittle.dart';

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
    return noidung(
        'Millionaire Squats', 'assets/images/MillionnaireSquats.png');
  }
}

class CantWalk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return noidung('Can\'t Walk', 'assets/images/CantWalk.png');
  }
}

Widget noidung(String name, String image) {
  return Scaffold(
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
      upperInfo[0]
    ]),
    floatingActionButton: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
            padding: EdgeInsets.only(bottom: 20, left: 20),
            child: FlatButton(
              onPressed: () {},
              child: Icon(
                FontAwesomeIcons.play,
                color: Colors.black,
              ),
            ))
      ],
    ),
  );
}

List<Widget> listUpper = [
  FatRemoval(),
  FullBodyMoneyMaker(),
  MissionFit(),
  HangoverFit(),
  OneHITTWonder(),
  BodyShock(),
  BodyKiller(),
  FullBodyHype(),
];

