import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';
import 'package:education/constants/app_constants.dart';
import 'package:education/gen/colors.gen.dart';
import 'package:education/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSubjectAssignedTcher extends StatelessWidget {
  const CustomSubjectAssignedTcher({super.key});

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
            AppConstants.subjectsandAssignedTeachers,
            style: TextFontStyle.textFntstyleFitree16w600,
          ),
          Text(
            AppConstants.subjectsandAssignedTeachers,
            style: TextFontStyle.txtfntstyleFitree14w400,
          ),
          SizedBox(height: 27.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppConstants.subject,
                style: TextFontStyle.txtfntstyleFitree14w400.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                AppConstants.assigned,
                style: TextFontStyle.txtfntstyleFitree14w400.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                AppConstants.actions,
                style: TextFontStyle.txtfntstyleFitree14w400.copyWith(
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
              SizedBox(height: 16, width: 16, child: Placeholder()),
              Padding(
                padding: EdgeInsets.only(right: 36.w),
                child: Text(
                  "Mathematics",
                  style: TextFontStyle.txtfntstyleFitree14w400.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(right: 30.w),
                child: Text(
                  "Mr. David Cohen",
                  style: TextFontStyle.txtfntstyleFitree14w400.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 16, width: 16, child: Placeholder()),
            ],
          ),
          UIHelper.verticalspace16,

          UIHelper.customDivider(),
          UIHelper.verticalspace16,

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 16, width: 16, child: Placeholder()),
              Padding(
                padding: EdgeInsets.only(right: 36.w),
                child: Text(
                  "Science",
                  style: TextFontStyle.txtfntstyleFitree14w400.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(right: 30.w),
                child: Text(
                  "Ms. Sara Levy",
                  style: TextFontStyle.txtfntstyleFitree14w400.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 16, width: 16, child: Placeholder()),
            ],
          ),
          UIHelper.verticalspace16,

          UIHelper.customDivider(),
          UIHelper.verticalspace16,

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 16, width: 16, child: Placeholder()),
              Padding(
                padding: EdgeInsets.only(right: 36.w),
                child: Text(
                  "English",
                  style: TextFontStyle.txtfntstyleFitree14w400.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(right: 30.w),
                child: Text(
                  "Mr. David Cohen",
                  style: TextFontStyle.txtfntstyleFitree14w400.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 16, width: 16, child: Placeholder()),
            ],
          ),
        ],
      ),
    );
  }
}
