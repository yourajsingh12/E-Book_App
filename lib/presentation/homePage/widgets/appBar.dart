
import 'package:e_book/presentation/profilePage/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../res/appColors/appColors.dart';

class AppBarWidget extends StatelessWidget{
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: SvgPicture.asset(
            "assets/icons/dashboard.svg",
            height: 30,
            width: 30,
            color: Theme.of(context).colorScheme.background,
          ),
        ),
        Text(
          "E-Book",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: Theme.of(context).colorScheme.background,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: InkWell(
            onTap: (){
              Get.to(ProfilePage());
            },
              child:  CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.background,
                child: const Text(
                  "YS",
                  style: TextStyle(color: AppColors.primaryColor),
                ),
              ),
          )

        ),
      ],
    );
  }

}