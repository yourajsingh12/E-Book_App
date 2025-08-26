import 'package:e_book/presentation/homePage/widgets/shimerLoading.dart';
import 'package:flutter/material.dart';
import 'package:e_book/components/bookCard.dart';
import 'package:e_book/models/data.dart';
import 'package:e_book/presentation/homePage/widgets/categories.dart';
import 'package:e_book/presentation/homePage/widgets/search.dart';
import 'package:e_book/presentation/homePage/widgets/appBar.dart';
import '../../components/bookCardTile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    // Simulate loading
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
  }

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
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Theme.of(context).colorScheme.background,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "MySelf Yuvraj 👨‍💻 I'm a Software Engineer and I created this project purely for learning purposes. Exploring tech, building ideas, and growing every day! 🚀",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.background,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SearchBox(),
                  const SizedBox(height: 20),
                  Text(
                    "Topics",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Theme.of(context).colorScheme.background,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: categoryData
                          .map(
                            (e) => Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Categories(
                            iconPath: e["icon"]!,
                            btnName: e["label"]!,
                          ),
                        ),
                      )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Trending",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: isLoading
                          ? List.generate(
                        5,
                            (_) => const ShimmerBookCard(isHorizontal: true),
                      )
                          : bookData
                          .map(
                            (e) => BookCard(
                          title: e.title,
                          bookUrl: e.bookUrl!,
                          ontap: () {},
                        ),
                      )
                          .toList(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Your Interest",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(height: 10),
                  Column(
                    children: isLoading
                        ? List.generate(
                      5,
                          (_) => const ShimmerBookCard(), // default vertical
                    )
                        : bookData
                        .map(
                          (e) => BookCardTile(
                        title: e.title!,
                        author: e.author!,
                        bookUrl: e.bookUrl!,
                        numberOfRating: e.numberOfRating!,
                        price: e.price!,
                        rating: e.rating!,
                            description: e.description!,
                      ),
                    )
                        .toList(),
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
