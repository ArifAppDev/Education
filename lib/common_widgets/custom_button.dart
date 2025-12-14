import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  final Color containerColor;
  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    required this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(8.r),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 24.h, width: 24.w, child: Placeholder()),
            SizedBox(width: 5.w),
            Text(
              title,
              style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColor.bgColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
