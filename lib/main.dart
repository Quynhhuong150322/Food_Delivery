import 'package:flutter/material.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:get/get.dart';

import 'pages/food/popular_food_detail.dart';
import 'pages/food/recommended_food_detail.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const PopularFoodDetail(),
      home: const MainFoodPage(),
      // home: const RecommendedFood(),
    );
  }
}
