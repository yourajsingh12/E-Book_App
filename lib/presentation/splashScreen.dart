import 'dart:async';

import 'package:e_book/presentation/welcomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homePage/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  final user = FirebaseAuth.instance.currentUser;

  @override
  void initState(){
 super.initState();

 //Navogate on this page
 Timer(const Duration(seconds: 3), () {

   if (user != null) {
     // User already signed in
     Get.offAll(const Home(), transition: Transition.fade, duration: const Duration(milliseconds: 800));
   } else {
     // Not signed in
     Get.offAll(const WelcomePage(), transition: Transition.fade, duration: const Duration(milliseconds: 800));
   }
 });


  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         Image.asset("assets/images/book.png",
         width: 250,
           height: 200,
           fit: BoxFit.contain,
         ),
            const SizedBox(height: 40,),

          ],
        ),
      ),
    );
  }
}
