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
        padding: EdgeInsets.only(
          top: 11.h,
          bottom: 11.h,
          right: 12.w,
          left: 12.w,
        ),

        decoration: BoxDecoration(
          color: fillColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20.h, width: 20.w, child: Placeholder()),
            SizedBox(width: 5.w),

            Text(title),
          ],
        ),
      ),
    );
  }
}
