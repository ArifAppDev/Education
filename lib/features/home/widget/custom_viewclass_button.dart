import 'package:education/assets_helper/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomViewclassButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  const CustomViewclassButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
        decoration: BoxDecoration(
          color: AppColor.bgColor,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: AppColor.c2E3227, width: 0.4.w),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20.h, width: 20.w, child: Placeholder()),
            SizedBox(width: 5.0.w),
            Text(title),
          ],
        ),
      ),
    );
  }
}
