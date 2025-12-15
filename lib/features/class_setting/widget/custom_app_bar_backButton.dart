import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBarBackbutton extends StatelessWidget {
  final String appbarName;
  final VoidCallback onTap;
  const CustomAppBarBackbutton({
    super.key,
    required this.appbarName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          GestureDetector(onTap: onTap, child: Icon(Icons.arrow_back_outlined)),
          SizedBox(width: 5.0.w),
          Text(
            appbarName,
            style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: AppColor.c2E3227,
            ),
          ),
        ],
      ),
    );
  }
}
