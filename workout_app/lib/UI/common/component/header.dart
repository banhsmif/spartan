import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String pic;
  Header({this.pic});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height / 3,
          decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(48.0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0.0, 2.0),
                  blurRadius: 8.0,
                )
              ]),
        ),
        Container(
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(48.0)),
                color: Colors.yellow,
                image: DecorationImage(
                    image: AssetImage(pic),
                    fit: BoxFit.cover)),
            height: MediaQuery.of(context).size.height / 3,
            alignment: Alignment.topLeft),
      ],
    );
  }
}
