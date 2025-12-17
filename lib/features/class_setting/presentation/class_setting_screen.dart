import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';

import 'package:education/common_widgets/custom_top_button_filled.dart';

import 'package:education/constants/subject_assign_list.dart';

import 'package:education/features/class_setting/widget/custom_app_bar_backButton.dart';
import 'package:education/features/class_setting/widget/custom_class_secretcode_card.dart';
import 'package:education/features/class_setting/widget/custom_class_summary_card.dart';

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
                  child: CustomAppBarBackbutton(
                    appbarName: 'Class Settings',
                    onTap: () => NavigationService.goBack,
                  ),
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
                          CustomTopButtonFilled(
                            fillColor: AppColor.cF0F0F0,
                            title: 'Subjects & Teachers',
                            onTap: () {
                              NavigationService.navigateTo(
                                Routes.subjectAndTeacherScreen,
                              );
                            },
                          ),
                        ],
                      ),
                      UIHelper.verticalspace20,

                      //============== custom class summary card =============
                      CustomClassSummaryCard(),

                      UIHelper.verticalspace24,

                      //============== custom class secret code  ==============
                      CustomClassSecretcodeCard(),
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
                              style: TextFontStyle
                                  .txtfontstyleFigtree16w600c2E3227,
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
                                            .txtfontstyleFigtree16w600c2E3227
                                            .copyWith(
                                              fontWeight: FontWeight.w400,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      "rachel.green@gmail.com",
                                      style: TextFontStyle
                                          .txtfontstyleFigtree16w600c2E3227
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
