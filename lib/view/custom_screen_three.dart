import 'package:flutter/material.dart';
import 'package:flutter_getx_course/student.dart';
import 'package:get/get.dart';

class CustomScreenThree extends StatelessWidget {
  CustomScreenThree({Key? key}) : super(key: key);
  // Student student = Student();
  final student = Student(name: "Tom", age: 25).obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                student.value.name,
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                //If individual variables are observable
                // student.name.value = student.name.value.toUpperCase();

                //If whole class is observable
                student.update((val) {
                  val?.name = val.name.toString().toUpperCase();
                });
              },
              child: const Text(
                "Convert to Upper Case",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
