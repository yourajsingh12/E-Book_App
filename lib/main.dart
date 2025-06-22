import 'package:e_book/presentation/welcomePage.dart';
import 'package:e_book/res/theme/themePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
       debugShowCheckedModeBanner: false,
       home:const WelcomePage(),
    );
  }
}


