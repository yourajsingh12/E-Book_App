import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerBookCard extends StatelessWidget {
  final bool isHorizontal;

  const ShimmerBookCard({super.key, this.isHorizontal = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: isHorizontal ? 0 : 8,
        horizontal: isHorizontal ? 8 : 0,
      ),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Container(
          width: isHorizontal ? 100 : double.infinity,
          height: isHorizontal ? 130 : 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
