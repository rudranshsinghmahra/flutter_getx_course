import 'package:flutter_getx_course/student.dart';
import 'package:get/get.dart';

class ControllerOne extends GetxController{
  // var student = Student();
  // void convertToUpperCase(){
  //   student.name.value = student.name.value.toString().toUpperCase();
  // }

  var student = Student(name: "Tom",age: 23).obs;

  void convertToUpperCase(){
   student.update((val) {
     val?.name = val.name.toString().toUpperCase();
   });
  }
}