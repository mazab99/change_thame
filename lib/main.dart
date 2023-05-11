import 'package:change_thame/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Mahmoud Azab',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: HomePage(),
    );
  }
}
