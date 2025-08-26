import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../models/bookModel.dart';
import '../presentation/bookDetails/bookDetails.dart';

class BookCardTile extends StatelessWidget {
  final String title;
  final String author;
  final double price;
  final double rating;
  final int numberOfRating;
  final String bookUrl;
  final String description;

  const BookCardTile({
    super.key,
    required this.title,
    required this.author,
    required this.bookUrl,
    required this.numberOfRating,
    required this.price,
    required this.rating,
    required this.description
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final book = BookModel(
          title: title,
          author: author,
          bookUrl: bookUrl,
          rating: rating,
          price: price,
          description: description, // Add proper description
          pages: 200, // Add actual page count
          language: 'English', // Add actual language
          audioLen: '5 hours',
          numberOfRating: numberOfRating, // Add actual audio length
        );
        Get.to(BookDetails(book: book));
      },// Add navigation or action here
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: const Offset(2, 2),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Book Image
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).primaryColor.withOpacity(0.3),
                      blurRadius: 8,
                      offset: const Offset(2, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    bookUrl,
                    width: 100,
                    height: 130,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Book details
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "By: $author",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.grey.shade600),
                      ),
                      const SizedBox(height: 6),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green.shade100,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          price == 0 ? "Price: Free" : "Price: ₹$price",
                          style: TextStyle(color: Colors.green.shade900),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            width: 18,
                            colorFilter: const ColorFilter.mode(
                              Colors.amber,
                              BlendMode.srcIn,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            "$rating",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "$numberOfRating Ratings",
                            style: TextStyle(color: Colors.grey.shade600),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
