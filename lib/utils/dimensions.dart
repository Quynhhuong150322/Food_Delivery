import 'package:get/get.dart';

// 844 * 390
// chia ti le man hinh
class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  // chieu cao 1 phan tu giao dien
  // lay 884 (kich thuoc man hinh) / kich thuoc phan tu vd 844/10
  static double pageView = screenHeight / 2.64;

  static double pageViewContainer = screenHeight / 3.84;
  static double pageViewTextContainer = screenHeight / 7.03;

  static double height5 = screenHeight / 168.8;
  static double height10 = screenHeight / 88.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;
  static double height45 = screenHeight / 18.76;
  static double height120 = screenHeight / 7.033;
  static double height100 = screenHeight / 8.44;

  // width padding and margin
  static double width5 = screenHeight / 168.8;
  static double width10 = screenHeight / 88.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28.13;
  static double width45 = screenHeight / 18.76;
  static double width120 = screenHeight / 7.033;
  static double width200 = screenHeight / 4.22;

// font size
  static double font20 = screenHeight / 42.2;
  static double font12 = screenHeight / 70.3;

  // radius
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;
  static double radius40 = screenHeight / 21.1;
  static double radius15 = screenHeight / 56.26;

  // icon size
  static double iconSize24 = screenHeight / 35.17;

  //list view size 390/120
  static double ListViewImg120 = screenWidth / 3.25;
  static double ListViewTextCont100 = screenWidth / 3.9;
}
