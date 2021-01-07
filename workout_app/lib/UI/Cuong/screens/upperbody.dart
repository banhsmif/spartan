import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workout_app/UI/Cuong/common/common.dart';
import 'package:workout_app/UI/Cuong/models/exercises.dart';
import 'package:workout_app/UI/modules/packageWorkout/packageUI.dart';

class UpperBody extends StatelessWidget {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Upper Body',
          style: kFontChildTitle,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          color: Color(0xFF000000),
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset('assets/icons/back.svg'),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                child: GridView.builder(
                    itemCount: upperbody.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: kDefaultPaddin,
                      crossAxisSpacing: kDefaultPaddin,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) => ItemCard(
                        exercises: upperbody[index],
                        press: () {
                          selected = index;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => listUpper[selected],
                              ));
                        })),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Exercises exercises;
  final Function press;
  const ItemCard({
    Key key,
    this.exercises,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0xFFF5F5F5),
                offset: Offset(0, 10),
                blurRadius: 8.0,
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(kDefaultPaddin),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16)),
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage(exercises.image), fit: BoxFit.cover)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
              child: Text(
                exercises.title,
                style: TextStyle(
                    color: Color(
                      0xFF000000,
                    ),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    fontFamily: 'SFPro'),
              ),
            ),
            Text(
              exercises.sett,
            )
          ],
        ),
      ),
    );
  }
}

