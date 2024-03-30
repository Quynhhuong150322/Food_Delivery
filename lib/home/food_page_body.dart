import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
      };
}

class _FoodPageBodyState extends State<FoodPageBody> {
  final PageController _pageController = PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: 320,
      child: ScrollConfiguration(
        behavior: AppScrollBehavior(), // Áp dụng Scroll Behavior
        child: PageView.builder(
          controller: _pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          },
        ),
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
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
            height: 140,
            margin: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,

              //   image: const DecorationImage(
              //     image: AssetImage("assets/image/food2.jpg"),
              //     fit: BoxFit.cover, // Đảm bảo hình ảnh lấp đầy khung hình
              //   ),
            ),
          ),
        ),
      ],
    );
  }
}
