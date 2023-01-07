import 'package:flutter/material.dart';
import 'package:flutter_getx_course/view/home_screen_view.dart';
import 'package:get/get.dart';

class CustomScreenOne extends StatefulWidget {
  const CustomScreenOne({Key? key}) : super(key: key);

  @override
  State<CustomScreenOne> createState() => _CustomScreenOneState();
}

class _CustomScreenOneState extends State<CustomScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CustomScreenOne"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Next Screen"),
            ),
            ElevatedButton(
              onPressed: () {
                // Get.to(
                //   const HomeScreenView(),
                // );

                //This is basically push operation
                // Get.toNamed("/home");

                //This is basically pushReplacement operation
                Get.offAllNamed("/home");
              },
              child: const Text("Previous Screen Screen"),
            ),
            Text(
                "${Get.parameters['channel']} and ${Get.parameters['content']}")
          ],
        ),
      ),
    );
  }
}
