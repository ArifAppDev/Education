import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTopButtonUnFilled extends StatelessWidget {
  final Function() onTap;

  final String title;

  const CustomTopButtonUnFilled({
    super.key,
    required this.onTap,
    required this.title,
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
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColor.c2E3227, width: 0.3.w),
        ),
        child: Center(
          child: Row(
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
      ),
    );
  }
}
