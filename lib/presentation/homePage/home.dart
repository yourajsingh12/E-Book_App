import 'package:e_book/models/data.dart';
import 'package:e_book/presentation/homePage/widgets/categories.dart';
import 'package:e_book/presentation/homePage/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:e_book/presentation/homePage/widgets/appBar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              color: Theme.of(context).colorScheme.primary,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  const AppBarWidget(),
                  const SizedBox(height: 20),
                  Text(
                    "Hello Guys 🤙",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: Theme.of(context).colorScheme.background),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "MySelf Yuvraj 👨‍💻 I'm a Software Engineer and I created this project purely for learning purposes. Exploring tech, building ideas, and growing every day! 🚀",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: Theme.of(context).colorScheme.background),
                  ),
                  const SizedBox(height: 20),
                  const SearchBox(),
                  const SizedBox(height: 20),
                  Text(
                    "Topics",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(color: Theme.of(context).colorScheme.background),
                  ),
                  const SizedBox(height: 10),

                  // Horizontal Scrollable Category Row
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: categoryData.map(
                            (e) => Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Categories(
                            iconPath: e["icon"]!,
                            btnName: e["label"]!,
                          ),
                        ),
                      ).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
