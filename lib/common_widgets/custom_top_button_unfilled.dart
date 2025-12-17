import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubTeacherTopButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool isSelected;
  final String title;

  const SubTeacherTopButton({
    super.key,
    required this.onTap,
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final Color backround = isSelected ? AppColor.cF0F0F0 : Colors.transparent;
    final Color borderColor = isSelected
        ? Colors.transparent
        : AppColor.cDFE3E8;
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
          color: backround,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: borderColor, width: 0.3.w),
        ),
        child: Center(
          child: Row(
            children: [
              SizedBox(height: 20.h, width: 20.w, child: Placeholder()),
              SizedBox(width: 5.w),

              Text(
                title,
                style: TextFontStyle.txtfntstyleFitree14w400c2E3227.copyWith(
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
