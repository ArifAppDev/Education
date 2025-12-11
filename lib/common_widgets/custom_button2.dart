import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtontwo extends StatelessWidget {
  final String title;
  final Function() onTap;
  final Color containerBorderColor;
  const CustomButtontwo({
    super.key,
    required this.title,
    required this.onTap,
    required this.containerBorderColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: containerBorderColor),
        ),
        height: 52.0.h,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text(
            title,
            style: TextFontStyle.textFntstyleFitree16w600.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColor.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
