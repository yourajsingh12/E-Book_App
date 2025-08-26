
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget{
  final String bookUrl;
  final String title;
  final VoidCallback ontap;
  const BookCard({super.key,required this.bookUrl,required this.title,required this.ontap});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(7),
      child:InkWell(
        onTap: ontap,
        child:SizedBox(
          width: 100,
          child: Column(
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(bookUrl,
                    width: 120,
                  ),
                ),
              ),
              Text(title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      )

    );
      
  }

}