import 'package:education/assets_helper/assets_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonFilled extends StatelessWidget {
  final Color fillColor;
  final String title;
  final Function() onTap;
  const CustomButtonFilled({
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
          top: 13.h,
          bottom: 13.h,
          right: 16.w,
          left: 16.w,
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

            Text(
              title,
              style: TextFontStyle.txtfntstyleFitree14w400.copyWith(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
