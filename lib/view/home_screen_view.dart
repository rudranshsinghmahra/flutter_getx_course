import 'package:flutter/material.dart';
import 'package:flutter_getx_course/view/custom_screen_one.dart';
import 'package:get/get.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Get.snackbar(
                //   "Snackbar Title",
                //   "This is Snackbar Message",
                //   snackPosition: SnackPosition.BOTTOM,
                //   overlayBlur: 5,
                //   showProgressIndicator: true,
                // );

                // Get.defaultDialog();

                // Get.bottomSheet(Wrap(
                //   children: [
                //     ListTile(
                //       title: const Text("Light Theme"),
                //       onTap: () {
                //         Get.changeTheme(ThemeData.light());
                //       },
                //     ),
                //     ListTile(
                //       title: const Text("Dark Theme"),
                //       onTap: () {
                //         Get.changeTheme(ThemeData.dark());
                //       },
                //     ),
                //   ],
                // ));

                // Navigate Normally
                // Get.to(const CustomScreenOne());

                //Navigate with Arguments
                // Get.to(
                //   CustomScreenOne(),
                //   arguments: "This is custom screen 1",
                // );

                //This is basically push operation
                Get.toNamed(
                    "/custom_screen_one?channel=Ripples Code&content=Flutter GetX");

                //This is basically pushReplacement operation
                // Get.offNamed("/custom_screen_one");
              },
              child: const Text("Navigate to Screen"),
            ),
          )
        ],
      ),
    );
  }
}
