import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';

import 'package:education/gen/colors.gen.dart';

import 'package:education/helpers/ui_helpers.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSentInvitationCard extends StatelessWidget {
  final String teacheremail;
  final String subjectname;
  final String sentdate;
  final String status;
  final VoidCallback onTap;

  const CustomSentInvitationCard({
    super.key,
    required this.teacheremail,
    required this.subjectname,
    required this.sentdate,
    required this.status,
    required this.onTap,
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
                "Teacher Email",
                style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(teacheremail),
            ],
          ),
          UIHelper.verticalSpace(12.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Subject Name",
                style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                subjectname,
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
                "Sent Date",
                style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                sentdate,
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
                "Status",
                style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColor.cFAF5BF,
                  borderRadius: BorderRadius.circular(11.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.w),
                child: Center(
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
              GestureDetector(
                onTap: onTap,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
                  decoration: BoxDecoration(
                    color: AppColor.cFFFFFFF,

                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: AppColor.cDFE3E8, width: 1.w),
                  ),
                  child: Center(
                    child: Text(
                      "Resend Invitation",
                      style: TextFontStyle.txtfntstyleFitree14w400c2E3227
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
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
                    "Cancel Invitation",
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
