import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';
import 'package:education/common_widgets/custom_button_filled.dart';
import 'package:education/common_widgets/custom_top_button_filled.dart';
import 'package:education/common_widgets/custom_top_button_unfilled.dart';

import 'package:education/constants/app_constants.dart';

import 'package:education/features/class_setting/widget/custom_app_bar_backButton.dart';

import 'package:education/features/class_setting/widget/custom_classcode_textformfield.dart';

import 'package:education/gen/colors.gen.dart';
import 'package:education/helpers/all_routes.dart';
import 'package:education/helpers/navigation_service.dart';
import 'package:education/helpers/ui_helpers.dart';
import 'package:education/provider/check_secure_provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ClassSettingScreen extends StatelessWidget {
  const ClassSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CheckSecureProvider(),
      child: Scaffold(
        //============== backround color ================
        backgroundColor: ColorName.cFFFFFF,

        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //===================== custom app bar ==================
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: CustomAppBarBackbutton(appbarName: 'Class Settings'),
                ),
                UIHelper.verticalspace16,

                UIHelper.customDivider(),
                UIHelper.verticalspace20,

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomTopButtonFilled(
                            fillColor: AppColor.cF0F0F0,
                            title: 'Class Overview',
                            onTap: () {},
                          ),
                          UIHelper.horizontalspace12,

                          CustomTopButtonUnFilled(
                            onTap: () {
                              NavigationService.navigateTo(
                                Routes.subjectandteacher,
                              );
                            },
                            title: 'Invites & Requests',
                          ),
                        ],
                      ),
                      UIHelper.verticalspace20,

                      Container(
                        padding: EdgeInsets.all(16.w),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: ColorName.cFFFFFF,
                          border: Border.all(
                            color: AppColor.c2E3227,
                            width: 0.4.w,
                          ),
                        ),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text(
                              AppConstants.classsummary,
                              style: TextFontStyle.textFntstyleFitree16w600
                                  .copyWith(
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
                                    border: Border.all(
                                      color: AppColor.c2E3227,
                                      width: 0.4.w,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 38.h,
                                        width: 38.w,

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            8.r,
                                          ),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "03",
                                            style: TextFontStyle
                                                .txtfntstyleFitree12w400
                                                .copyWith(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  color: AppColor.c9810FA,
                                                ),
                                          ),
                                          Text(
                                            "Total Subject",
                                            style: TextFontStyle
                                                .txtfntstyleFitree12w400,
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
                                    border: Border.all(
                                      color: AppColor.c2E3227,
                                      width: 0.4.w,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 38.h,
                                        width: 38.w,

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            8.r,
                                          ),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "03",
                                            style: TextFontStyle
                                                .textFntstyleFitree16w600
                                                .copyWith(
                                                  color: AppColor.cEA580C,
                                                ),
                                          ),
                                          Text(
                                            "Total Subject",
                                            style: TextFontStyle
                                                .txtfntstyleFitree12w400,
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
                                  style: TextFontStyle.txtfntstyleFitree12w400
                                      .copyWith(fontSize: 16),
                                ),
                                Text(
                                  "Mathematics 101",
                                  style: TextFontStyle.textFntstyleFitree16w600
                                      .copyWith(),
                                ),
                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  AppConstants.gradeLevel,
                                  style: TextFontStyle.txtfntstyleFitree12w400
                                      .copyWith(fontSize: 16),
                                ),
                                Text(
                                  "Grade 8",
                                  style: TextFontStyle.textFntstyleFitree16w600
                                      .copyWith(),
                                ),
                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  AppConstants.classCreateDate,
                                  style: TextFontStyle.txtfntstyleFitree12w400
                                      .copyWith(fontSize: 16),
                                ),
                                Text(
                                  "12/03/2025",
                                  style: TextFontStyle.textFntstyleFitree16w600
                                      .copyWith(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      UIHelper.verticalspace24,

                      Container(
                        padding: EdgeInsets.all(16.w),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: ColorName.cFFFFFF,
                          border: Border.all(
                            color: AppColor.c2E3227,
                            width: 0.4.w,
                          ),
                        ),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text(
                              AppConstants.classSecretCode,
                              style: TextFontStyle.textFntstyleFitree16w600,
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              "Use this code to invite subject teachers to join your class",
                              style: TextFontStyle.txtfntstyleFitree14w400,
                            ),
                            UIHelper.verticalspace16,
                            Row(
                              children: [
                                //================= custom text form field ===========
                                Expanded(child: CustomClasscodeTextformfield()),
                                SizedBox(width: 12.w),
                                CustomButtonFilled(
                                  fillColor: AppColor.cF0F0F0,
                                  title: 'Class Overview',
                                  onTap: () {},
                                ),
                              ],
                            ),
                            UIHelper.verticalspace16,

                            CustomButtonFilled(
                              fillColor: AppColor.cF0F0F0,
                              title: 'Generate New Code',
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                      UIHelper.verticalspace24,

                      Container(
                        padding: EdgeInsets.all(16.w),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: ColorName.cFFFFFF,
                          border: Border.all(
                            color: AppColor.c2E3227,
                            width: 0.4.w,
                          ),
                        ),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text(
                              AppConstants.hometeacherinfo,
                              style: TextFontStyle.textFntstyleFitree16w600,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 22.h,
                                  width: 22.w,
                                  child: Placeholder(),
                                ),
                                SizedBox(width: 8.w),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text(
                                        "Rachel Green",
                                        style: TextFontStyle
                                            .textFntstyleFitree16w600
                                            .copyWith(
                                              fontWeight: FontWeight.w400,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      "rachel.green@gmail.com",
                                      style: TextFontStyle
                                          .textFntstyleFitree16w600
                                          .copyWith(
                                            fontWeight: FontWeight.w400,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
