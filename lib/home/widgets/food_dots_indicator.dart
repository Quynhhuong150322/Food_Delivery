import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:food_delivery/utils/app_colors.dart';

class DotsIndicatorWidget extends StatelessWidget {
  final int dotsCount;
  final int position;

  const DotsIndicatorWidget({
    super.key,
    required this.dotsCount,
    required this.position,
  });

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: dotsCount,
      position: position,
      decorator: DotsDecorator(
        activeColor: AppColors.mainColor,
        size: const Size.square(9.0),
        activeSize: const Size(18.0, 9.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
