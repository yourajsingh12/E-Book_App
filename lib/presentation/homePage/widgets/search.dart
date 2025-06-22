
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBox extends StatelessWidget{

  const SearchBox({super.key});

  Widget build(BuildContext context){
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.background,
      ),
      child: Row(
        children: [
          SizedBox(width: 20),
          SvgPicture.asset("assets/icons/search.svg"),
          SizedBox(width: 20,),
          Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    )
                ),
              )
          )
        ],
      ),
    );
  }
}