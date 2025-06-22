import 'package:e_book/components/primaryButton.dart';
import 'package:e_book/presentation/homePage/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../res/appColors/appColors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 500,
              padding: const EdgeInsets.all(30),
              color: Theme.of(context).colorScheme.primary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/book.png"),
                        const SizedBox(height: 20),
                        Text(
                          "E-Book Store",
                          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                            color: Theme.of(context).colorScheme.background,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Here you can find best book for you and you can also read book and listens book",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(color: Theme.of(context).colorScheme.background),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        "Disclaimer",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.",
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30), // Fixed: Replaced Spacer
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: PrimayButton(
                      btnName: "Continue",
                      ontap: () {
                        Get.offAll(const Home());
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
