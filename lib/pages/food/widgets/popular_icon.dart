// popular_icon.dart

import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';
// popular_icons.dart

class PopularIcon extends StatelessWidget {
  final IconData nameIcon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  final double iconSize;
  const PopularIcon({
    super.key,
    required this.nameIcon,
    this.backgroundColor = const Color(0xFFfcf4e4),
    this.iconColor = const Color(0xFF758d54),
    this.size = 30,
    this.iconSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 2),
        // color: Colors.white38,
        color: backgroundColor,
      ),
      child: Icon(
        nameIcon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
