import 'package:flutter/material.dart';
import 'package:flutter_getx_course/view/custom_screen_four.dart';
import 'package:flutter_getx_course/view/custom_screen_one.dart';
import 'package:flutter_getx_course/view/custom_screen_three.dart';
import 'package:flutter_getx_course/view/custom_screen_two.dart';
import 'package:flutter_getx_course/view/home_screen_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const MyApp()),
        GetPage(name: "/home", page: () => const HomeScreenView()),
        GetPage(
          name: "/custom_screen_one",
          page: () => const CustomScreenOne(),
        ),
      ],
      home: CustomClassFour(),
    );
  }
}
