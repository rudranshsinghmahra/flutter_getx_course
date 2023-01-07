import 'package:get/get.dart';

class Student{

  //Create only individual variables observables
  // RxString name = RxString("Tom");
  // RxInt age = RxInt(25);

  //Create whole class observable
  var name;
  var age;
  Student({this.name, this.age});
}