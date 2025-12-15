import 'package:education/features/class_setting/widget/custom_app_bar_backButton.dart';
import 'package:education/features/join_request/widget/custom_joinfrom_teachercard.dart';
import 'package:education/gen/colors.gen.dart';
import 'package:education/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JoinRequestTeacherscreen extends StatelessWidget {
  const JoinRequestTeacherscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //============== backround color ================
      backgroundColor: ColorName.cFFFFFF,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // ========== custom app bar ============
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: CustomAppBarBackbutton(
                  appbarName: 'Join Request from Teacher',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              UIHelper.verticalSpace(16.h),

              UIHelper.customDivider(),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    UIHelper.verticalspace20,
                    CustomjointfromTaacherCard(
                      teachername: 'Alex Rofel',
                      teacherEmail: 'mark@gamil.com',
                      schoolName: 'Technion Israel Institute',
                      city: 'Dhaka',
                      institution: 'FGHFH256',
                      requestdate: '21/03/2025',
                      status: 'Pending',
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
