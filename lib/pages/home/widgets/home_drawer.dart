import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeDrawer extends StatelessWidget {
  final AnimationController? controller;
  final bool isDarkMode;

  const HomeDrawer({
    super.key,
    this.controller,
    this.isDarkMode = false,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: isDarkMode
          ? const Color(0xff1C242F)
          : Get.theme.scaffoldBackgroundColor,
      child: ListView(
        children: [
          Container(
            color: isDarkMode ? const Color(0xff233040) : Colors.red,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 6, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          if (controller!.status == AnimationStatus.forward ||
                              controller!.status == AnimationStatus.completed) {
                            controller!.reverse();
                          } else {
                            controller!.forward();
                          }
                        },
                        icon: Icon(
                          isDarkMode ? Icons.light_mode : Icons.dark_mode,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                const ListTile(
                  title: Text(
                    "Mahmoud",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
