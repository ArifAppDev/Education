import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';

import 'package:education/constants/subject_assign_list.dart';
import 'package:education/features/class_setting/widget/custom_classcode_textformfield.dart';
import 'package:education/gen/colors.gen.dart';
import 'package:education/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomClassSecretcodeCard extends StatelessWidget {
  const CustomClassSecretcodeCard({super.key});

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
            AppConstants.classSecretCode,
            style: TextFontStyle.txtfontstyleFigtree16w600c2E3227,
          ),
          SizedBox(height: 2.h),
          Text(
            "Use this code to invite subject teachers to join your class",
            style: TextFontStyle.txtfntstyleFitree14w400c2E3227,
          ),
          UIHelper.verticalspace16,
          Row(
            children: [
              //================= custom text form field ===========
              Expanded(child: CustomClasscodeTextformfield()),
              SizedBox(width: 12.w),
            ],
          ),
          UIHelper.verticalspace16,
        ],
      ),
    );
  }
}
