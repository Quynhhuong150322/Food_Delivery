// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery/pages/food/widgets/exandable_text_widget.dart';
import 'package:food_delivery/utils/app_colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/big_text.dart';

import 'widgets/popular_icon.dart';

class RecommendedFood extends StatelessWidget {
  const RecommendedFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              toolbarHeight: 80,
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PopularIcon(nameIcon: Icons.clear),
                  PopularIcon(nameIcon: Icons.shopping_cart_outlined)
                ],
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(30),
                // Sliver app bar
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                    ),
                    color: Colors.white,
                  ),
                  // margin: EdgeInsets.only(),
                  // color: Colors.white
                  width: double.maxFinite,
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  child: Center(
                    child: BigText(
                      text: 'Chinese Side',
                      size: Dimensions.font26,
                    ),
                  ),
                ),
              ),
              pinned: true,
              backgroundColor: AppColors.yellowColor,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/image/food0.jpg",
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: Dimensions.width20, right: Dimensions.width20),
                    child: const ExpandableText(
                      text:
                          'Đây là một ứng dụng thương mại điện tử để giao đồ ăn bằng cách sử dụng rung với phần phụ trợ làm hướng dẫn khóa học cấp tốc dành cho iOS và Android. Đây là một ứng dụng mua sắm có phần phụ trợ của Laravel và bảng quản trị Laravel sử dụng các hoạt động CRUD hoàn chỉnh api an toàn. Chúng tôi cũng sử dụng firebase để thông báo. Hướng dẫn này bao gồm việc hoàn thiện giỏ hàng, đặt hàng, đăng ký hoặc đăng ký, đăng nhập hoặc đăng nhập, thanh toán. Đây là một ứng dụng thương mại điện tử để giao đồ ăn bằng cách sử dụng rung với phần phụ trợ làm hướng dẫn khóa học cấp tốc dành cho iOS và Android. Đây là một ứng dụng mua sắm có phần phụ trợ của Laravel và bảng quản trị Laravel sử dụng các hoạt động CRUD hoàn chỉnh api an toàn. Chúng tôi cũng sử dụng firebase để thông báo. Hướng dẫn này bao gồm việc hoàn thiện giỏ hàng, đặt hàng, đăng ký hoặc đăng ký, đăng nhập hoặc đăng nhập, thanh toán.Đây là một ứng dụng thương mại điện tử để giao đồ ăn bằng cách sử dụng rung với phần phụ trợ làm hướng dẫn khóa học cấp tốc dành cho iOS và Android. Đây là một ứng dụng mua sắm có phần phụ trợ của Laravel và bảng quản trị Laravel sử dụng các hoạt động CRUD hoàn chỉnh api an toàn. Chúng tôi cũng sử dụng firebase để thông báo. Hướng dẫn này bao gồm việc hoàn thiện giỏ hàng, đặt hàng, đăng ký hoặc đăng ký, đăng nhập hoặc đăng nhập, thanh toán. Đây là một ứng dụng thương mại điện tử để giao đồ ăn bằng cách sử dụng rung với phần phụ trợ làm hướng dẫn khóa học cấp tốc dành cho iOS và Android. Đây là một ứng dụng mua sắm có phần phụ trợ của Laravel và bảng quản trị Laravel sử dụng các hoạt động CRUD hoàn chỉnh api an toàn. Chúng tôi cũng sử dụng firebase để thông báo. Hướng dẫn này bao gồm việc hoàn thiện giỏ hàng, đặt hàng, đăng ký hoặc đăng ký, đăng nhập hoặc đăng nhập, thanh toán.Đây là một ứng dụng thương mại điện tử để giao đồ ăn bằng cách sử dụng rung với phần phụ trợ làm hướng dẫn khóa học cấp tốc dành cho iOS và Android. Đây là một ứng dụng mua sắm có phần phụ trợ của Laravel và bảng quản trị Laravel sử dụng các hoạt động CRUD hoàn chỉnh api an toàn. Chúng tôi cũng sử dụng firebase để thông báo. Hướng dẫn này bao gồm việc hoàn thiện giỏ hàng, đặt hàng, đăng ký hoặc đăng ký, đăng nhập hoặc đăng nhập, thanh toán. Đây là một ứng dụng thương mại điện tử để giao đồ ăn bằng cách sử dụng rung với phần phụ trợ làm hướng dẫn khóa học cấp tốc dành cho iOS và Android. Đây là một ứng dụng mua sắm có phần phụ trợ của Laravel và bảng quản trị Laravel sử dụng các hoạt động CRUD hoàn chỉnh api an toàn. Chúng tôi cũng sử dụng firebase để thông báo. Hướng dẫn này bao gồm việc hoàn thiện giỏ hàng, đặt hàng, đăng ký hoặc đăng ký, đăng nhập hoặc đăng nhập, thanh toán.Đây là một ứng dụng thương mại điện tử để giao đồ ăn bằng cách sử dụng rung với phần phụ trợ làm hướng dẫn khóa học cấp tốc dành cho iOS và Android. Đây là một ứng dụng mua sắm có phần phụ trợ của Laravel và bảng quản trị Laravel sử dụng các hoạt động CRUD hoàn chỉnh api an toàn. Chúng tôi cũng sử dụng firebase để thông báo. Hướng dẫn này bao gồm việc hoàn thiện giỏ hàng, đặt hàng, đăng ký hoặc đăng ký, đăng nhập hoặc đăng nhập, thanh toán. Đây là một ứng dụng thương mại điện tử để giao đồ ăn bằng cách sử dụng rung với phần phụ trợ làm hướng dẫn khóa học cấp tốc dành cho iOS và Android. Đây là một ứng dụng mua sắm có phần phụ trợ của Laravel và bảng quản trị Laravel sử dụng các hoạt động CRUD hoàn chỉnh api an toàn. Chúng tôi cũng sử dụng firebase để thông báo. Hướng dẫn này bao gồm việc hoàn thiện giỏ hàng, đặt hàng, đăng ký hoặc đăng ký, đăng nhập hoặc đăng nhập, thanh toán.',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.only(
                left: Dimensions.width45 * 2,
                right: Dimensions.width45 * 2,
                top: Dimensions.height10,
                bottom: Dimensions.height10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PopularIcon(
                    iconSize: Dimensions.iconSize24,
                    nameIcon: Icons.remove,
                    backgroundColor: AppColors.mainColor,
                    iconColor: Colors.white,
                    // color: Colors.white,
                  ),
                  BigText(
                    text: '\$12.88 X 0',
                    color: AppColors.mainBlackColor,
                    size: Dimensions.font26,
                  ),
                  const PopularIcon(
                    nameIcon: Icons.add,
                    backgroundColor: AppColors.mainColor,
                    iconColor: Colors.white,
                  )
                ],
              ),
            ),
            Container(
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
                    child: const Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: AppColors.mainColor,
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
                      text: '\$28 | Add to cart',
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
