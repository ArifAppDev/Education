import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';

import 'package:education/gen/colors.gen.dart';
import 'package:education/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomUserCard extends StatelessWidget {
  final String username;
  final String usergmail;
  final String userJoinedDate;
  const CustomUserCard({
    super.key,
    required this.username,
    required this.usergmail,
    required this.userJoinedDate,
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
          SizedBox(height: 40, width: 40, child: Placeholder()),
          UIHelper.horizontalSpace(8.w),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: TextFontStyle.textFntstyleFitree16w600.copyWith(
                  fontWeight: FontWeight.w500,
                  color: AppColor.c000000,
                ),
              ),
              UIHelper.verticalSpace(2.h),
              Text(usergmail, style: TextFontStyle.txtfntstyleFitree14w400),
              UIHelper.verticalSpace(4.h),
              Text(
                userJoinedDate,
                style: TextFontStyle.txtfntstyleFitree14w400,
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
                      "Mathematics",
                      style: TextFontStyle.txtfntstyleFitree12w400,
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
                      "Science",
                      style: TextFontStyle.txtfntstyleFitree12w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          UIHelper.horizontalSpace(28.w),

          Row(
            children: [
              SizedBox(height: 18.h, width: 18.w, child: Placeholder()),
            ],
          ),
        ],
      ),
    );
  }
}
