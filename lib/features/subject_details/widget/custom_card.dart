import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';

import 'package:education/gen/colors.gen.dart';
import 'package:education/helpers/ui_helpers.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCard extends StatelessWidget {
  final String subjectname;
  final String assignedTeacher;
  final String createClassdate;
  final String totallesson;
  final String subjectStatus;

  const CustomCard({
    super.key,
    required this.subjectname,
    required this.assignedTeacher,
    required this.createClassdate,
    required this.totallesson,
    required this.subjectStatus,
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

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Subject Name",
                style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(subjectname),
            ],
          ),
          UIHelper.verticalSpace(12.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Assigned Teacher",
                style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                assignedTeacher,
                style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          UIHelper.verticalSpace(12.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Create Class Date",
                style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                createClassdate,
                style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          UIHelper.verticalSpace(12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Lessons Conducted",
                style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                totallesson,
                style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          UIHelper.verticalSpace(12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Subject Status",
                style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
                decoration: BoxDecoration(
                  color: AppColor.c99EFC4,
                  borderRadius: BorderRadius.circular(11.r),
                ),
                child: Text(
                  subjectStatus,
                  style: TextFontStyle.txtfontstyleFigtree16w600c2E3227
                      .copyWith(fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          UIHelper.verticalSpace(24.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                decoration: BoxDecoration(
                  color: AppColor.cFFFFFFF,

                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: AppColor.cDFE3E8, width: 1.w),
                ),
                child: Center(
                  child: Text(
                    "Change Teacher",
                    style: TextFontStyle.txtfntstyleFitree14w400c2E3227
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                decoration: BoxDecoration(
                  color: AppColor.cFFFFFFF,
                  border: Border.all(color: AppColor.cDFE3E8, width: 1.w),

                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Center(
                  child: Text(
                    "Change Teacher",
                    style: TextFontStyle.txtfntstyleFitree14w400c2E3227
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
