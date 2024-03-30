import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  // TextOverflow overFlow;
  SmallText({
    super.key,
    this.color = const Color(0xFFccc7c5),
    this.size = 12,
    required this.text,
    this.height = 1.2,
    // this.overFlow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // overflow: overFlow,
      style: GoogleFonts.roboto(
        color: color,
        // fontWeight: FontWeight.w400,
        fontSize: size,
        height: height,
      ),
    );
  }
}
