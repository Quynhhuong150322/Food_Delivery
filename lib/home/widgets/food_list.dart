import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/icon_and_text.dart';
import 'package:food_delivery/widgets/small_text.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/utils/app_colors.dart';

class FoodListWidget extends StatelessWidget {
  const FoodListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: Dimensions.height20),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(
              left: Dimensions.width20,
              right: Dimensions.width20,
              bottom: Dimensions.height10),
          child: Row(
            children: [
              Container(
                width: Dimensions.ListViewImg120,
                height: Dimensions.ListViewImg120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white38,
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/food2.jpg"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: Dimensions.ListViewTextCont100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      bottomRight: Radius.circular(Dimensions.radius20),
                    ),
                    color: Colors.amber[50],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: Dimensions.width10,
                      right: Dimensions.width10,
                      top: Dimensions.height5,
                      bottom: Dimensions.height5,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BigText(text: 'Nutritious fruit meal in China'),
                        SizedBox(height: Dimensions.height10),
                        SmallText(text: 'With Chinese characteristics'),
                        SizedBox(height: Dimensions.height10),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconAndText(
                              icon: Icons.circle_sharp,
                              text: 'Normal',
                              iconColor: AppColors.yellowColor,
                            ),
                            IconAndText(
                              icon: Icons.add_location_alt_sharp,
                              text: '1.7km',
                              iconColor: AppColors.mainColor,
                            ),
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
              )
            ],
          ),
        );
      },
    );
  }
}
