import 'package:flutter/material.dart';
import 'package:workout_app/UI/common/component/item.dart';
import 'package:workout_app/UI/common/constant.dart';

// We need satefull widget for our categories

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Chest", "Back", "Abs", "Legs"];
  // By default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Container(
            height: MediaQuery.of(context).size.width * 1 / 6,
            child: SizedBox(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) => buildCategory(index),
              ),
            ),
          ),
        ),
        Expanded(
            child: Container(
          child: listBaiTap[selectedIndex],
        ))
      ],
    );
  }

  List<Widget> listBaiTap = [
    ListView(
      children: [
        WorkoutItem(
          nameWorkout: wPushup,
          rep: 'Beginner',
          image: 'assets/images/pushup.png',
        ),
        WorkoutItem(
          nameWorkout: wDecline,
          rep: 'Beginner',
          image: 'assets/images/shoulder.png',
        ),
        WorkoutItem(
          nameWorkout: 'Narrow Push Up',
          rep: 'Beginner',
          image: 'assets/images/pseudo.png',
        ),
        WorkoutItem(
          nameWorkout: 'Clap Push Up',
          rep: 'Advanced',
          image: 'assets/images/clap.png',
        ),
        WorkoutItem(
          nameWorkout: 'Incline Push Up',
          rep: 'Beginner',
          image: 'assets/images/pushup.png',
        ),
        WorkoutItem(
          nameWorkout: 'In Out Push Up',
          rep: 'Beginner',
          image: 'assets/images/pushup.png',
        ),
      ],
    ),
    ListView(
      children: [
        WorkoutItem(
          nameWorkout: wPike,
          rep: 'Advanced',
          image: 'assets/images/pushup.png',
        ),
        WorkoutItem(
          nameWorkout: 'Pseudo',
          rep: 'Beginner',
          image: 'assets/images/pseudo.png',
        ),
        WorkoutItem(
          nameWorkout: 'Tower pull',
          rep: 'Advanced',
          image: 'assets/images/ass.png',
        ),
        WorkoutItem(
          nameWorkout: 'Scapula Push Down',
          rep: 'Advanced',
          image: 'assets/images/BodyKiller.png',
        ),
        WorkoutItem(
          nameWorkout: 'Boat',
          rep: 'Beginner',
          image: 'assets/images/clap.png',
        ),
        WorkoutItem(
          nameWorkout: 'Butterfly',
          rep: 'Advanced',
          image: 'assets/images/abs.png',
        ),
      ],
    ),
    ListView(
      children: [
        WorkoutItem(
          nameWorkout: wCrunch,
          rep: 'Advanced',
          image: 'assets/images/pushup.png',
        ),
        WorkoutItem(
          nameWorkout: 'Plank',
          rep: 'Beginner',
          image: 'assets/images/ass.png',
        ),
        WorkoutItem(
          nameWorkout: 'FatRemoval Plank',
          rep: 'Beginner',
          image: 'assets/images/FatRemoval.png',
        ),
        WorkoutItem(
          nameWorkout: 'Size Raise',
          rep: 'Advanced',
          image: 'assets/images/FullBodyMoneyMaker.png',
        ),
        WorkoutItem(
          nameWorkout: 'Crossbody Crunch',
          rep: 'Beginner',
          image: 'assets/images/pushup.png',
        ),
        WorkoutItem(
          nameWorkout: 'wCrunch',
          rep: 'Advanced',
          image: 'assets/images/BodyShock.png',
        ),
      ],
    ),
    ListView(
      children: [
        WorkoutItem(
          nameWorkout: wSquats,
          rep: 'Advanced',
          image: 'assets/images/squats.png',
        ),
        WorkoutItem(
          nameWorkout: 'Leg pull',
          rep: 'Advanced',
          image: 'assets/images/legs.png',
        ),
        WorkoutItem(
          nameWorkout: 'Lunges',
          rep: 'Advanced',
          image: 'assets/images/lunges.png',
        ),
        WorkoutItem(
          nameWorkout: 'QuadBoost',
          rep: 'Advanced',
          image: 'assets/images/Wake.png',
        ),
        WorkoutItem(
          nameWorkout: 'QuadBoost-Alt',
          rep: 'Advanced',
          image: 'assets/images/MillionnaireSquats.png',
        ),
        WorkoutItem(
          nameWorkout: 'Pike',
          rep: 'Advanced',
          image: 'assets/images/pike.png',
        ),
      ],
    )
  ];

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                categories[index],
                style: TextStyle(
                  fontSize: 30,
                  color: selectedIndex == index ? kTextColor : kTextLightColor,
                  fontFamily: 'SFPro',
                  letterSpacing: 6,
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: kDefaultPaddin / 4), //top padding 5
                height: 2,
                width: 100.0,
                color:
                    selectedIndex == index ? Colors.black : Colors.transparent,
              )
            ],
          ),
        ),
      ),
    );
  }
}
