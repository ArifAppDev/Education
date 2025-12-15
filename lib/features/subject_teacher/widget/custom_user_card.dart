import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/app_image.dart';
import 'package:education/assets_helper/assets_fonts.dart';

import 'package:education/gen/colors.gen.dart';
import 'package:education/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTeacherCard extends StatelessWidget {
  final String teacherName;
  final String usergmail;
  final String joinedDate;
  final String teacherImg;
  final String sub1;
  final String sub2;

  const CustomTeacherCard({
    super.key,
    required this.teacherName,
    required this.usergmail,
    required this.joinedDate,
    required this.teacherImg,
    required this.sub1,
    required this.sub2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: ColorName.cFFFFFF,
        border: Border.all(color: AppColor.c2E3227, width: 0.4.w),
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          CircleAvatar(backgroundImage: NetworkImage(teacherImg)),
          UIHelper.horizontalSpace(8.w),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                teacherName,
                style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppColor.c000000,
                ),
              ),
              UIHelper.verticalSpace(2.h),
              Text(
                usergmail,
                style: TextFontStyle.txtfntstyleFitree14w400c2E3227,
              ),
              UIHelper.verticalSpace(4.h),
              Text(
                joinedDate,
                style: TextFontStyle.txtfntstyleFitree14w400c2E3227,
              ),
              UIHelper.verticalSpace(4.h),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.cF4F6F8,
                      borderRadius: BorderRadius.circular(11.r),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 4.h,
                    ),
                    child: Text(
                      sub1,
                      style: TextFontStyle.txtfntstyleFitree12w400c59c53,
                    ),
                  ),
                  UIHelper.horizontalSpace(6.w),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColor.cF4F6F8,
                      borderRadius: BorderRadius.circular(11.r),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 4.h,
                    ),
                    child: Text(
                      sub2,
                      style: TextFontStyle.txtfntstyleFitree12w400c59c53,
                    ),
                  ),
                ],
              ),
            ],
          ),
          UIHelper.horizontalSpace(28.w),

          Row(children: [Image.asset(AppImage.menu)]),
        ],
      ),
    );
  }
}
