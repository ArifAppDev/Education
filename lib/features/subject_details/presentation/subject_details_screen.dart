import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';
import 'package:education/common_widgets/custom_button.dart';
import 'package:education/features/class_setting/widget/custom_app_bar_backButton.dart';
import 'package:education/features/subject_details/widget/custom_card.dart';
import 'package:education/features/subject_details/widget/custom_lesson_overview_card.dart';

import 'package:education/gen/colors.gen.dart';

import 'package:education/helpers/ui_helpers.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubjectDetailsScreen extends StatelessWidget {
  const SubjectDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //============== backround color ================
      backgroundColor: ColorName.cFFFFFF,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              //===================== custom App bar ====================
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
                child: CustomAppBarBackbutton(appbarName: 'Subject Details'),
              ),

              UIHelper.customDivider(),
              UIHelper.verticalSpace(20.h),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomCard(
                      subjectname: 'Science',
                      assignedTeacher: 'Ms. Sara Levy',
                      createClassdate: '12/03/2025',
                      totallesson: '12',
                      subjectStatus: 'In Progress',
                    ),
                    UIHelper.verticalSpace(20.h),
                    CustomLessonOverviewCard(),
                    UIHelper.verticalSpace(20.h),

                    Container(
                      padding: EdgeInsets.all(16.w),
                      decoration: BoxDecoration(
                        color: AppColor.cFFFFFFF,
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: AppColor.cDFE3E8, width: 1.w),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 30.h,
                                width: 30.w,
                                child: Placeholder(),
                              ),
                              UIHelper.horizontalSpace(8),

                              Text(
                                "Manage Subject Removal",
                                style: TextFontStyle
                                    .txtfontstyleFigtree16w600c2E3227
                                    .copyWith(
                                      fontSize: 18,
                                      color: AppColor.cD4183D,
                                    ),
                              ),
                            ],
                          ),
                          UIHelper.verticalSpace(4),
                          Text(
                            "If this subject is no longer needed, you can delete it permanently. All related lessons, student records, and points will be removed and cannot be restored.",
                            style: TextFontStyle.txtfntstyleFitree14w400c2E3227,
                          ),
                          UIHelper.verticalSpace(24),

                          //================ custom abutton =====================
                          CustomButton(
                            title: 'Delete This Subject',
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
