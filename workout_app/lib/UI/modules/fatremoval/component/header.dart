import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  
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
                    image: AssetImage('assets/images/pushup.png'),
                    fit: BoxFit.cover)),
            height: MediaQuery.of(context).size.height / 3,
            alignment: Alignment.topLeft),
        // Padding(
        //   padding: EdgeInsets.only(top: 30, left: 10),
        //   child: IconButton(
        //     icon: Icon(Icons.arrow_back_ios),
        //     color: Colors.white,
        //     onPressed: () {},
        //     // => Navigator.pop(context)
        //   ),
        // ),
      ],
    );
  }
}
