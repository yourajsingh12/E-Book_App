import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Categories extends StatelessWidget{
  final String iconPath;
  final String btnName;
  const Categories({super.key,required this.btnName,required this.iconPath});


  Widget build(BuildContext context){
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.background,
        ),
        child: Row(
          children: [
            SvgPicture.asset(iconPath, height: 20, width: 20),
            const SizedBox(width: 10),
            Text(
              btnName,
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );

  }
}