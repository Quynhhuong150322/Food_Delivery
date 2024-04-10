import 'package:food_delivery/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

class PopularproductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularproductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 220) {
      _popularProductList = [];
      // _popularProductList.addAll();
      update();
    } else {}
  }
}
