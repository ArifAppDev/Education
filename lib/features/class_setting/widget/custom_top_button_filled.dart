import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTopButtonFilled extends StatelessWidget {
  final Color fillColor;
  final String title;
  final Function() onTap;
  const CustomTopButtonFilled({
    super.key,
    required this.fillColor,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 44.0.h,
        width: 149.w,
        decoration: BoxDecoration(
          color: fillColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(children: [


            ],
          ),
      ),
    );
  }
}
