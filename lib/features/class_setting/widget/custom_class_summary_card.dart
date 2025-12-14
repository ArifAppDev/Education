import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';
import 'package:education/constants/app_constants.dart';
import 'package:education/gen/colors.gen.dart';
import 'package:education/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomClassSummaryCard extends StatelessWidget {
  const CustomClassSummaryCard({super.key});

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
            AppConstants.classsummary,
            style: TextFontStyle.textFntstyleFitree16w600.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColor.c000000,
              fontSize: 18.sp,
            ),
          ),
          UIHelper.verticalspace16,
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: ColorName.cFFFFFF,
                  border: Border.all(color: AppColor.c2E3227, width: 0.4.w),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 38.h,
                      width: 38.w,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: AppColor.cE9D4FF,
                      ),

                      child: Center(
                        child: SizedBox(
                          height: 24.h,
                          width: 24.w,
                          child: Placeholder(),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "03",
                          style: TextFontStyle.txtfntstyleFitree12w400.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: AppColor.c9810FA,
                          ),
                        ),
                        Text(
                          "Total Subject",
                          style: TextFontStyle.txtfntstyleFitree12w400,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              UIHelper.horizontalspace16,

              Container(
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: ColorName.cFFFFFF,
                  border: Border.all(color: AppColor.c2E3227, width: 0.4.w),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 38.h,
                      width: 38.w,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: AppColor.cFFEDD5CC,
                      ),

                      child: Center(
                        child: SizedBox(
                          height: 24.h,
                          width: 24.w,
                          child: Placeholder(),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "03",
                          style: TextFontStyle.textFntstyleFitree16w600
                              .copyWith(color: AppColor.cEA580C),
                        ),
                        Text(
                          "Total Subject",
                          style: TextFontStyle.txtfntstyleFitree12w400,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          UIHelper.verticalspace24,

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppConstants.classname,
                style: TextFontStyle.txtfntstyleFitree12w400.copyWith(
                  fontSize: 16,
                ),
              ),
              Text(
                "Mathematics 101",
                style: TextFontStyle.textFntstyleFitree16w600.copyWith(),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppConstants.gradeLevel,
                style: TextFontStyle.txtfntstyleFitree12w400.copyWith(
                  fontSize: 16,
                ),
              ),
              Text(
                "Grade 8",
                style: TextFontStyle.textFntstyleFitree16w600.copyWith(),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppConstants.classCreateDate,
                style: TextFontStyle.txtfntstyleFitree12w400.copyWith(
                  fontSize: 16,
                ),
              ),
              Text(
                "12/03/2025",
                style: TextFontStyle.textFntstyleFitree16w600.copyWith(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
