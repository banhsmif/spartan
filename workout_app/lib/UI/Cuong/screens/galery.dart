import 'package:flutter/material.dart';
import 'package:workout_app/UI/Cuong/common/common.dart';
import 'package:workout_app/UI/common/component/item.dart';

// We need satefull widget for our categories

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Chest", "Trap", "Abs", "Legs"];
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
          child: ListView(
            children: [
              WorkoutItem(nameWorkout: 'a', rep: 5),
              WorkoutItem(nameWorkout: 'a', rep: 5),
              WorkoutItem(nameWorkout: 'a', rep: 5),
              WorkoutItem(nameWorkout: 'a', rep: 5),
              WorkoutItem(nameWorkout: 'a', rep: 5),
              WorkoutItem(nameWorkout: 'a', rep: 5),
              WorkoutItem(nameWorkout: 'a', rep: 5),
              WorkoutItem(nameWorkout: 'a', rep: 5),
            ],
          ),
        )
      ],
    );
  }

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
          // color: Colors.red,
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


