import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';
import 'package:education/common_widgets/custom_button.dart';
import 'package:education/common_widgets/custom_top_button_unfilled.dart';

import 'package:education/features/class_setting/widget/custom_app_bar_backButton.dart';

import 'package:education/features/general_setting/widget/custom_gnral_configurationcard.dart';
import 'package:education/gen/colors.gen.dart';
import 'package:education/helpers/all_routes.dart';
import 'package:education/helpers/navigation_service.dart';
import 'package:education/helpers/ui_helpers.dart';
import 'package:education/provider/top_button_selection_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class GeneralSettingScreen extends StatelessWidget {
  const GeneralSettingScreen({super.key});

  static const List<String> _routes = [
    Routes.subjectAndTeacherScreen,
    Routes.classSettingInviteScreen,
    Routes.generalsettingscreen,
  ];
  void _onTopButtonTap(BuildContext context, int index) {
    context.read<TopButtonSelectionProvider>().select(index);
    NavigationService.navigateTo(_routes[index]).then((_) {});
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = context
        .watch<TopButtonSelectionProvider>()
        .selectedIndex;
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
                  onTap: () => NavigationService.goBack,
                ),
              ),
              UIHelper.verticalspace16,
              UIHelper.customDivider(),
              UIHelper.verticalspace20,

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UIHelper.horizontalspace12,
                    SubTeacherTopButton(
                      onTap: () => _onTopButtonTap(context, 0),
                      title: 'Subjects & Teachers',
                      isSelected: selectedIndex == 0,
                    ),
                    UIHelper.horizontalspace12,
                    SubTeacherTopButton(
                      onTap: () => _onTopButtonTap(context, 1),
                      title: 'Invites & Requests',
                      isSelected: selectedIndex == 1,
                    ),
                    UIHelper.horizontalspace12,
                    SubTeacherTopButton(
                      onTap: () => _onTopButtonTap(context, 2),
                      title: 'General Settings',
                      isSelected: selectedIndex == 2,
                    ),
                    UIHelper.horizontalspace12,
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
