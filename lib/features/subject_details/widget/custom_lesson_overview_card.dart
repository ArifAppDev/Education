import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';

import 'package:education/gen/colors.gen.dart';
import 'package:education/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLessonOverviewCard extends StatelessWidget {
  const CustomLessonOverviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: ColorName.cFFFFFF,
        border: Border.all(color: AppColor.c2E3227, width: 0.4.w),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            "Lesson Overview",
            style: TextFontStyle.txtfontstyleFigtree16w600c2E3227,
          ),
          Text(
            "Track lesson performance, points, and class progress in one place.",
            style: TextFontStyle.txtfntstyleFitree14w400c2E3227,
          ),
          SizedBox(height: 27.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Lesson Date",
                style: TextFontStyle.txtfntstyleFitree14w400c2E3227.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Total Points",
                style: TextFontStyle.txtfntstyleFitree14w400c2E3227.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Notes",
                style: TextFontStyle.txtfntstyleFitree14w400c2E3227.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          UIHelper.verticalspace16,

          UIHelper.customDivider(),
          UIHelper.verticalspace16,

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 36.w),
                child: Text(
                  "02 Oct 2025",
                  style: TextFontStyle.txtfntstyleFitree14w400c2E3227.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(right: 30.w),
                child: Text(
                  "80/120",
                  style: TextFontStyle.txtfntstyleFitree14w400c2E3227.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              GestureDetector(
                child: Text(
                  "See note,",
                  style: TextFontStyle.txtfntstyleFitree14w400c2E3227.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          UIHelper.verticalspace16,

          UIHelper.customDivider(),
          UIHelper.verticalspace16,
        ],
      ),
    );
  }
}
