import 'package:education/assets_helper/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTopButtonUndilled extends StatelessWidget {
  final Function() onTap;
  final Color fillColor;
  final String title;

  const CustomTopButtonUndilled({
    super.key,
    required this.onTap,
    required this.title,
    required this.fillColor,
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
          border: Border.all(color: AppColor.c2E3227, width: 0.3.w),
        ),
        child: Center(
          child: Row(
            children: [
              SizedBox(height: 20.h, width: 20.w, child: Placeholder()),
              SizedBox(width: 5.w),

              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
