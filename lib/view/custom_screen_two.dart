import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomScreenTwo extends StatelessWidget {
  CustomScreenTwo({Key? key}) : super(key: key);
  RxInt count = RxInt(0);
  void incrementCount() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text("Count value is $count"),
            ),
            ElevatedButton(
                onPressed: () {
                  incrementCount();
                  print(count);
                },
                child: Text("Increment Counter"))
          ],
        ),
      ),
    );
  }
}
