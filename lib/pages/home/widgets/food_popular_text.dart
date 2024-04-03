import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';
import 'package:food_delivery/utils/dimensions.dart';

class PopularTextWidget extends StatelessWidget {
  const PopularTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: Dimensions.width30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          BigText(text: "Popular"),
          SizedBox(width: Dimensions.width10),
          Container(
            margin: const EdgeInsets.only(bottom: 3),
            child: BigText(
              text: ".",
              color: Colors.black26,
            ),
          ),
          SizedBox(width: Dimensions.width10),
          Container(
            margin: const EdgeInsets.only(bottom: 2),
            child: SmallText(text: "Food Paring"),
          ),
          SizedBox(width: Dimensions.width10)
        ],
      ),
    );
  }
}
