import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/pages/food/widgets/popular_icon.dart';
import 'package:food_delivery/utils/app_colum.dart';

import '../../utils/app_colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text.dart';
import '../../widgets/small_text.dart';
import 'widgets/exandable_text_widget.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // background Image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularHeight350,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/food0.jpg"),
                ),
              ),
            ),
          ),
          // icon Widget
          Positioned(
            top: Dimensions.height20,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child:
                      const PopularIcon(nameIcon: Icons.arrow_back_ios_rounded),
                ),
                const PopularIcon(nameIcon: Icons.shopping_cart_outlined)
              ],
            ),
          ),
          // introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularHeight350 - 20,
            // borderRadius: BorderRadius.circular(Dimensions.radius30),
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.width20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppColumn(
                    text: 'Chinese Side',
                    // size: Dimensions.font26,
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  BigText(text: 'Introduce'),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  const Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableText(
                          text:
                              'Đây là một ứng dụng thương mại điện tử để giao đồ ăn bằng cách sử dụng rung với phần phụ trợ làm hướng dẫn khóa học cấp tốc dành cho iOS và Android. Đây là một ứng dụng mua sắm có phần phụ trợ của Laravel và bảng quản trị Laravel sử dụng các hoạt động CRUD hoàn chỉnh api an toàn. Chúng tôi cũng sử dụng firebase để thông báo. Hướng dẫn này bao gồm việc hoàn thiện giỏ hàng, đặt hàng, đăng ký hoặc đăng ký, đăng nhập hoặc đăng nhập, thanh toán. Đây là một ứng dụng thương mại điện tử để giao đồ ăn bằng cách sử dụng rung với phần phụ trợ làm hướng dẫn khóa học cấp tốc dành cho iOS và Android. Đây là một ứng dụng mua sắm có phần phụ trợ của Laravel và bảng quản trị Laravel sử dụng các hoạt động CRUD hoàn chỉnh api an toàn. Chúng tôi cũng sử dụng firebase để thông báo. Hướng dẫn này bao gồm việc hoàn thiện giỏ hàng, đặt hàng, đăng ký hoặc đăng ký, đăng nhập hoặc đăng nhập, thanh toán. '),
                    ),
                  )
                ],
              ),
            ),
          ),
          // expandable text widget
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
            // top: Dimensions.height20,
            // bottom: Dimensions.height20,
            left: Dimensions.width20,
            right: Dimensions.width20),
        height: Dimensions.bottomHeight120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.radius20 * 2),
              topRight: Radius.circular(Dimensions.radius20 * 2)),
          color: AppColors.buttonBackgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  BigText(text: '0'),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  const Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
              child: BigText(
                text: '\$10 | Add to cart',
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
