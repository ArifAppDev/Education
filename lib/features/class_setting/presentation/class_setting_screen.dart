import 'package:education/assets_helper/app_colors.dart';
import 'package:education/features/class_setting/widget/custom_app_bar_backButton.dart';
import 'package:education/gen/colors.gen.dart';
import 'package:education/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClassSettingScreen extends StatelessWidget {
  const ClassSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //============== backround color ================
      backgroundColor: ColorName.cFFFFFF,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //===================== custom app bar ==================
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                child: CustomAppBarBackbutton(appbarName: 'Class Settings'),
              ),
              UIHelper.verticalspace16,

              SizedBox(
                width: double.infinity.w,
                child: Divider(height: 1.0.h, color: AppColor.cF2F2F2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
