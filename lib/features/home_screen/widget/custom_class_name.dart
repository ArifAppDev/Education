import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';
import 'package:education/common_widgets/custom_button.dart';
import 'package:education/constants/app_constants.dart';
import 'package:education/features/home_screen/widget/custom_viewclass_button.dart';
import 'package:education/features/home_screen/widget/point_card_button.dart';
import 'package:education/gen/colors.gen.dart';
import 'package:education/helpers/all_routes.dart';
import 'package:education/helpers/navigation_service.dart';
import 'package:education/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomClassnameCard extends StatelessWidget {
  const CustomClassnameCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: ColorName.cFFFFFF,
        border: Border.all(color: AppColor.c2E3227, width: 0.5.w),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppConstants.classname,
                    style: TextFontStyle.textFntstyleFitree16w600.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  UIHelper.verticalspaverysmall,

                  Text("Grade 8", style: TextFontStyle.txtfntstyleFitree14w400),
                ],
              ),

              SizedBox(height: 33.3.h, width: 33.3.w, child: Placeholder()),
            ],
          ),
          UIHelper.verticalspace16,

          //==  point contyainer ===============
          PointCardButton(
            containerColor: AppColor.cBEDBFF,
            title: 'Total Point',
            point: '620',
            containerBorderColor: AppColor.cBEDBFF,
            iconContainerColor: AppColor.c1E88E5,
            pointColor: AppColor.c1E88E5,
          ),
          UIHelper.verticalspace12,

          PointCardButton(
            containerColor: AppColor.cBE2FDEB,
            title: 'Total Students',
            point: '256',
            containerBorderColor: AppColor.cBE2FDEB,
            iconContainerColor: AppColor.c00A63E,
            pointColor: AppColor.c00A63E,
          ),
          UIHelper.verticalspace12,

          PointCardButton(
            containerColor: AppColor.cE9D4FF,
            title: 'Lessons Conducted',
            point: '23',
            containerBorderColor: AppColor.cE9D4FF,
            iconContainerColor: AppColor.c9810FA,
            pointColor: AppColor.c9810FA,
          ),
          UIHelper.verticalspace32,

          //=================== first button===============
          CustomViewclassButton(title: 'View Students', onTap: () {}),
          UIHelper.verticalspace16,
          //=================== second button===============
          CustomViewclassButton(
            title: 'Class Settings',
            onTap: () {
              NavigationService.navigateTo(Routes.classSettingScreen);
            },
          ),
          UIHelper.verticalspace24,

          CustomButton(title: 'View Students', onTap: () {}),
        ],
      ),
    );
  }
}
