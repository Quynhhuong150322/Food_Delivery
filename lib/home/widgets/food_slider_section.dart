import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';

class SliderWidget extends StatelessWidget {
  final PageController pageController;
  final double currentPageValue;
  final double scaleFactor;
  final double height;

  const SliderWidget({
    super.key,
    required this.pageController,
    required this.currentPageValue,
    required this.scaleFactor,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimensions.pageView,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, position) {
          return _buildPageItem(position);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == currentPageValue.floor()) {
      var currScale = 1 - (currentPageValue - index) * (1 - scaleFactor);
      var currTrans = height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == currentPageValue.floor() + 1) {
      var currScale =
          scaleFactor + (currentPageValue - index + 1) * (1 - scaleFactor);
      var currTrans = height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
    } else if (index == currentPageValue.floor() - 1) {
      var currScale = 1 - (currentPageValue - index) * (1 - scaleFactor);
      var currTrans = height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, height * (1 - scaleFactor) / 2, 1);
    }
    return Transform(
      transform: matrix,
      child: Container(
        height: Dimensions.pageViewContainer,
        margin: EdgeInsets.only(
            left: Dimensions.width10, right: Dimensions.width10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius30),
          color:
              index.isEven ? const Color(0xFF69c5df) : const Color(0xFF9294cc),
          image: const DecorationImage(
            image: AssetImage("assets/image/food2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
