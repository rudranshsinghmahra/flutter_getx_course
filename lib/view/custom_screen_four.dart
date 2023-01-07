import 'package:flutter/material.dart';
import 'package:flutter_getx_course/controller/controller_two.dart';
import 'package:get/get.dart';

class CustomClassFour extends StatelessWidget {
  CustomClassFour({Key? key}) : super(key: key);

  //if init is not declare in GetX then we need to globally declare our controller as
  ControllerTwo controllerTwo = Get.put(ControllerTwo());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx with Controller Type"),
      ),
      body: Center(child: GetX<ControllerTwo>(
        // init: ControllerTwo(),
        builder: (controller) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Counter value : ${controllerTwo.counter.value}",
                style: TextStyle(fontSize: 30),
              )
            ],
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //It is used when init is declared
          // Get.find<ControllerTwo>().incrementCounter();

          //It is used when init is not declared
          controllerTwo.incrementCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
