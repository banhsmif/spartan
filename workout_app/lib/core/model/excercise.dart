class Excercise {
  String name;
  int rep;
  String description;
  Excercise({this.name, this.rep});
}

class ExcerciseBrain {
  List<Excercise> _excerciseData = [
    Excercise(name: 'Push up', rep: 12),
    Excercise(name: 'Diamond push up', rep: 12),
    Excercise(name: 'Wide push up', rep: 12),
    Excercise(name: 'Narrow push up', rep: 12),
    Excercise(name: 'Decline push up', rep: 12)
  ];

  int _number = 0;
  String getWorkoutName() => _excerciseData[_number].name;
  int getRep() => _excerciseData[_number].rep;
  String getDes() => _excerciseData[_number].description;
}
