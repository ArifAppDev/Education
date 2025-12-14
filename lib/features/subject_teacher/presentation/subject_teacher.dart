import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';
import 'package:education/common_widgets/custom_button.dart';
import 'package:education/common_widgets/custom_button_filled.dart';
import 'package:education/common_widgets/custom_dialog_box.dart';
import 'package:education/common_widgets/custom_top_button_unfilled.dart';
import 'package:education/constants/app_constants.dart';
import 'package:education/features/class_setting/widget/custom_app_bar_backButton.dart';
import 'package:education/features/subject_teacher/widget/custom_subject_assign_card.dart';
import 'package:education/features/subject_teacher/widget/custom_user_card.dart';
import 'package:education/gen/colors.gen.dart';
import 'package:education/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubjectTeacher extends StatelessWidget {
  const SubjectTeacher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //============== backround color ================
      backgroundColor: ColorName.cFFFFFF,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: CustomButtonFilled(
                            fillColor: AppColor.cF0F0F0,
                            title: 'Subjects & Teachers',
                            onTap: () {},
                          ),
                        ),
                        UIHelper.horizontalspace12,
                        Flexible(
                          child: CustomTopButtonUnFilled(
                            onTap: () {},
                            title: 'Invites & Requests',
                          ),
                        ),
                      ],
                    ),

                    UIHelper.verticalSpace(20.h),

                    //=============== custom subjec assigned teacher ================
                    CustomSubjectAssignedTcher(),

                    UIHelper.verticalspace24,

                    CustomButton(
                      containerColor: AppColor.primaryColor,
                      title: 'Add New Subject',
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return CustomDialogBox();
                          },
                        );
                      },
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
                            AppConstants.allsubject,
                            style:
                                TextFontStyle.txtfontstyleFigtree16w600c2E3227,
                          ),
                          Text(
                            "View and manage teachers attached\n to this class",
                            style: TextFontStyle.txtfntstyleFitree14w400c2E3227,
                          ),
                          SizedBox(height: 27.h),

                          //================ custom user card ===============
                          CustomUserCard(
                            username: 'Marvin McKinney',
                            usergmail: 'rachel.green@gmail.com',
                            userJoinedDate: 'Joined: 12/03/2025',
                          ),
                          UIHelper.verticalSpace(16.h),

                          CustomUserCard(
                            username: 'Savannah Nguyen',
                            usergmail: 'rachel.green@gmail.com',
                            userJoinedDate: 'Joined: 12/03/2025',
                          ),
                          UIHelper.verticalSpace(16.h),

                          CustomUserCard(
                            username: 'Cody Fisher',
                            usergmail: 'rachel.green@gmail.com',
                            userJoinedDate: 'Joined: 12/03/2025',
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
    );
  }
}
