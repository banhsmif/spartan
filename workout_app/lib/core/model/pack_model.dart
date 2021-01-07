import 'package:workout_app/core/model/excercise.dart';

class Package {
  final String name, image, level;
  final int round, excercise;
  List<Excercise> listExcercise = [];

  Package({this.name, this.round, this.excercise, this.level, this.image,this.listExcercise});
}

class PackageBrain {
  final List<Package> _packageData = [
    Package(
        name: 'Push up routine',
        round: 3,
        excercise: 6,
        level: 'Beginner',
        image: "assets/images/pushup.png"),
    Package(
        name: 'Chest pump',
        round: 5,
        excercise: 6,
        level: 'Intermediate',
        image: "assets/images/pushup.png")
  ];
  int _number = 0;

  String getName() => _packageData[_number].name;
  String getLv() => _packageData[_number].level;
  String getImg() => _packageData[_number].image;
  int getRound() => _packageData[_number].round;
  int getExcercise() => _packageData[_number].excercise;
}
