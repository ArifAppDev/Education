import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/app_image.dart';
import 'package:education/assets_helper/assets_fonts.dart';

import 'package:education/gen/colors.gen.dart';

import 'package:education/helpers/ui_helpers.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomjointfromTaacherCard extends StatelessWidget {
  final String teachername;
  final String teacherEmail;
  final String schoolName;
  final String city;
  final String institution;
  final String requestdate;
  final String status;

  const CustomjointfromTaacherCard({
    super.key,
    required this.teachername,
    required this.teacherEmail,
    required this.schoolName,
    required this.city,
    required this.institution,
    required this.requestdate,
    required this.status,
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
                "Teacher Name",
                style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(teachername),
            ],
          ),
          UIHelper.verticalSpace(12.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Teacher Email",
                style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                teacherEmail,
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
                "School name",
                style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                schoolName,
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
                "City",
                style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              Center(
                child: Text(
                  city,
                  style: TextFontStyle.txtfontstyleFigtree16w600c2E3227
                      .copyWith(fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          UIHelper.verticalSpace(12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Institution Symbol",
                style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              Center(
                child: Text(
                  institution,
                  style: TextFontStyle.txtfontstyleFigtree16w600c2E3227
                      .copyWith(fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          UIHelper.verticalSpace(12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Requested Date",
                style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              Center(
                child: Text(
                  requestdate,
                  style: TextFontStyle.txtfontstyleFigtree16w600c2E3227,
                ),
              ),
            ],
          ),
          UIHelper.verticalSpace(12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Status",
                style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.cFAF5BF,
                    borderRadius: BorderRadius.circular(11.r),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  child: Text(
                    status,
                    style: TextFontStyle.txtfontstyleFigtree16w600c2E3227
                        .copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColor.c984B00,
                        ),
                  ),
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
                  color: AppColor.c00A63E,

                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: AppColor.cDFE3E8, width: 1.w),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.done, color: AppColor.cFFFFFFF),
                    UIHelper.horizontalSpace(8.w),
                    Text(
                      "Resend Invitation",
                      style: TextFontStyle.txtfntstyleFitree14w400c2E3227
                          .copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColor.cFFFFFFF,
                          ),
                    ),
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                decoration: BoxDecoration(
                  color: AppColor.cD4183D,
                  border: Border.all(color: AppColor.cDFE3E8, width: 1.w),

                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImage.cross, height: 25),
                    UIHelper.horizontalSpace(8.w),
                    Text(
                      "Reject",
                      style: TextFontStyle.txtfntstyleFitree14w400c2E3227
                          .copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColor.cFFFFFFF,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
