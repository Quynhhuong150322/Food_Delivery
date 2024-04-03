import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';

import '../../../utils/app_colors.dart';
import '../../../widgets/big_text.dart';
import '../../../widgets/icon_and_text.dart';
import '../../../widgets/small_text.dart';

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
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(
                left: Dimensions.width10, right: Dimensions.width10),
            // padding: const EdgeInsets.only(left: 28, right: 28),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              color: index.isEven
                  ? const Color(0xFF69c5df)
                  : const Color(0xFF9294cc),
              image: const DecorationImage(
                image: AssetImage("assets/image/food2.jpg"),
                fit: BoxFit.cover, // Đảm bảo hình ảnh lấp đầy khung hình
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                  bottom: Dimensions.height30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xFFe8e8e8),
                        blurRadius: 5.0,
                        offset: Offset(0, 5))
                  ]

                  //   image: const DecorationImage(
                  //     image: AssetImage("assets/image/food2.jpg"),
                  //     fit: BoxFit.cover, // Đảm bảo hình ảnh lấp đầy khung hình
                  //   ),
                  ),
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height10,
                    left: 15,
                    right: 15,
                    bottom: Dimensions.height10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .start, // Alignment bat dau tu vi tri dau tien
                  children: [
                    BigText(text: 'Chinese Side'),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => const Icon(
                                    Icons.star_rounded,
                                    color: AppColors.mainColor,
                                    size: 15,
                                  )),
                        ),
                        SizedBox(
                          width: Dimensions.height10,
                        ),
                        SmallText(text: '4.5'),
                        const SizedBox(
                          width: 10,
                        ),
                        SmallText(text: '1287'),
                        const SizedBox(
                          width: 5,
                        ),
                        SmallText(text: 'comment')
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconAndText(
                          icon: Icons.circle_sharp,
                          text: 'Normal',
                          iconColor: AppColors.yellowColor,
                        ),
                        // SizedBox(
                        //   width: 10,
                        // ),
                        IconAndText(
                          icon: Icons.add_location_alt_sharp,
                          text: '1.7km',
                          iconColor: AppColors.mainColor,
                        ),
                        // SizedBox(
                        //   width: 10,
                        // ),
                        IconAndText(
                          icon: Icons.access_time,
                          text: '32min',
                          iconColor: AppColors.yellowColor,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
