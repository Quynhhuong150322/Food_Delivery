import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/big_text.dart';
import '../widgets/icon_and_text.dart';
import '../widgets/small_text.dart';
import 'app_colors.dart';
import 'dimensions.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Alignment bat dau tu vi tri dau tien
        children: [
          BigText(
            text: text,
            size: Dimensions.font26,
          ),
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
            height: Dimensions.height20,
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
    );
  }
}
