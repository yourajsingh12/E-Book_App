import 'package:e_book/firebase_options.dart';
import 'package:e_book/presentation/splashScreen.dart';
import 'package:e_book/presentation/welcomePage.dart';
import 'package:e_book/res/theme/themePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {

  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'E-Book',
      theme: lightTheme,
       debugShowCheckedModeBanner: false,
       home:const SplashScreen(),
    );
  }
}


