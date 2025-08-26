
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../res/appColors/appColors.dart';

class BookDetailsHeader extends StatelessWidget{
 final String coverUrl;
 final String title;
 final String author;
 final String description;
 final String rating;
 final String pages;
 final String language;
 final String audioLength;

  const BookDetailsHeader({super.key, required this.coverUrl, required this.title, required this.author, required this.description, required this.rating, required this.pages, required this.language, required this.audioLength});

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        // Header Section
        Container(
          color: AppColors.primaryColor,
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 20),
          child: Column(
            children: [
              // Back button and SVG icon
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back,
                        color: Theme.of(context).colorScheme.background),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SvgPicture.asset(
                    "assets/icons/green.svg",
                    height: 24,
                    width: 24,
                    color: Theme.of(context).colorScheme.background,
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Book Image in center
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        coverUrl,
                        height: 250,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Text(title,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Theme.of(context).colorScheme.background),),
              Text("author: $author",
                style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Theme.of(context).colorScheme.background),
              ),

              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("Rating",
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.background),
                      ),
                      Text(rating,
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Theme.of(context).colorScheme.background),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text("Pages",
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.background),
                      ),
                      Text(pages,
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Theme.of(context).colorScheme.background),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text("Language",
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.background),
                      ),
                      Text(language,
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Theme.of(context).colorScheme.background),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text("Audio",
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Theme.of(context).colorScheme.background),
                      ),
                      Text(audioLength,
                        style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Theme.of(context).colorScheme.background),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),

        // Book Details Below Image

      ],
    );

  }

}