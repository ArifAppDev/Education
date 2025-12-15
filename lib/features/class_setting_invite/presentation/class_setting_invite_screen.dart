import 'package:education/features/class_setting/widget/custom_app_bar_backButton.dart';
import 'package:education/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClassSettingInviteScreen extends StatelessWidget {
  const ClassSettingInviteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //============== backround color ================
      backgroundColor: ColorName.cFFFFFF,

      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              //================== custom back button ============
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: CustomAppBarBackbutton(
                  appbarName: 'Subject Details',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
