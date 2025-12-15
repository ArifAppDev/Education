import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';
import 'package:education/common_widgets/custom_button.dart';
import 'package:education/common_widgets/custom_top_button_unfilled.dart';
import 'package:education/features/class_setting/widget/custom_app_bar_backButton.dart';
import 'package:education/features/class_setting/widget/custom_button_filled.dart';
import 'package:education/features/general_setting/widget/custom_gnral_configurationcard.dart';
import 'package:education/gen/colors.gen.dart';
import 'package:education/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GeneralSettingScreen extends StatelessWidget {
  const GeneralSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //============== backround color ================
      backgroundColor: ColorName.cFFFFFF,

      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              //===================== custom app bar ==================
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: CustomAppBarBackbutton(
                  appbarName: 'Class Settings',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              UIHelper.verticalspace16,
              UIHelper.customDivider(),
              UIHelper.verticalspace20,

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 12,
                  children: [
                    CustomTopButtonUnFilled(
                      onTap: () {},
                      title: 'Subjects & Teachers',
                    ),
                    CustomTopButtonUnFilled(
                      onTap: () {},
                      title: 'Invites & Requests',
                    ),
                    CustomButtonFilled(
                      fillColor: AppColor.cF0F0F0,
                      title: 'General Settings',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              UIHelper.verticalspace20,

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    // ============== custom general configure card ==============
                    CustomGeneralConfigureCard(),
                    UIHelper.verticalspace20,

                    Container(
                      padding: EdgeInsets.all(16.w),
                      decoration: BoxDecoration(
                        color: AppColor.cFFFFFFF,
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: AppColor.cD4183D, width: 1.w),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Danger Zone",
                            style: TextFontStyle
                                .txtfontstyleFigtree16w600c2E3227
                                .copyWith(
                                  fontSize: 18,
                                  color: AppColor.cD4183D,
                                ),
                          ),
                          UIHelper.verticalSpace(4),
                          Text(
                            "Permanently delete this class and all associated data information",
                            style: TextFontStyle.txtfntstyleFitree14w400c2E3227,
                          ),
                          UIHelper.verticalSpace(24),

                          //================ custom abutton =====================
                          CustomButton(
                            title: 'Delete This Class',
                            onTap: () {},
                            containerColor: AppColor.cD4183D,
                          ),
                          UIHelper.verticalSpace(24),
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
    );
  }
}
