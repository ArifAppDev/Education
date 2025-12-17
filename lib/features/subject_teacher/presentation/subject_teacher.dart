import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';
import 'package:education/common_widgets/custom_button.dart';

import 'package:education/common_widgets/custom_dialog_box.dart';
import 'package:education/common_widgets/custom_top_button_unfilled.dart';
import 'package:education/constants/subject_assign_list.dart';
import 'package:education/constants/subject_assign_teacher_list.dart';
import 'package:education/constants/teacher_list.dart';

import 'package:education/features/subject_teacher/widget/custom_user_card.dart';
import 'package:education/gen/colors.gen.dart';
import 'package:education/helpers/all_routes.dart';
import 'package:education/helpers/navigation_service.dart';
import 'package:education/helpers/ui_helpers.dart';
import 'package:education/provider/top_button_selection_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SubjectTeacher extends StatelessWidget {
  const SubjectTeacher({super.key});

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
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

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UIHelper.verticalSpace(20.h),

                    //===============  subjec assigned teacher ================
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
                          /// Title
                          Text(
                            AppConstants.subjectsandAssignedTeachers,
                            style:
                                TextFontStyle.txtfontstyleFigtree16w600c2E3227,
                          ),
                          Text(
                            AppConstants.subjectsandAssignedTeachers,
                            style: TextFontStyle.txtfntstyleFitree14w400c2E3227,
                          ),

                          SizedBox(height: 27.h),

                          /// Table Header
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppConstants.subject,
                                style: TextFontStyle
                                    .txtfntstyleFitree14w400c2E3227
                                    .copyWith(fontWeight: FontWeight.w500),
                              ),
                              Text(
                                AppConstants.assigned,
                                style: TextFontStyle
                                    .txtfntstyleFitree14w400c2E3227
                                    .copyWith(fontWeight: FontWeight.w500),
                              ),
                              Text(
                                AppConstants.actions,
                                style: TextFontStyle
                                    .txtfntstyleFitree14w400c2E3227
                                    .copyWith(fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),

                          UIHelper.verticalspace16,
                          UIHelper.customDivider(),

                          /// ============= List view builder ===============
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: subjecteacherlist.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 5.h,
                                  horizontal: 4.h,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          subjecteacherlist[index]['subject'],
                                          style: TextFontStyle
                                              .txtfntstyleFitree14w400c2E3227,
                                        ),

                                        Text(
                                          subjecteacherlist[index]['assign'],
                                          style: TextFontStyle
                                              .txtfntstyleFitree14w400c2E3227,
                                        ),

                                        PopupMenuButton<String>(
                                          color: AppColor.cFFFFFFF,
                                          padding: EdgeInsets.zero,
                                          icon: Image.asset(
                                            subjecteacherlist[index]['actions'],
                                            height: 20.h,
                                            width: 20.w,
                                          ),
                                          onSelected: (value) {
                                            if (value == 'view') {
                                              NavigationService.navigateTo(
                                                Routes.subjectDetailsScreen,
                                              );
                                            } else if (value == 'edit') {
                                              debugPrint(
                                                'Edit Subject clicked for ${subjecteacherlist[index]['subject']}',
                                              );
                                            }
                                          },
                                          itemBuilder: (context) => [
                                            PopupMenuItem<String>(
                                              value: 'view',
                                              child: Text(
                                                'View Details',
                                                style: TextFontStyle
                                                    .txtfntstyleFitree14w400c2E3227,
                                              ),
                                            ),
                                            const PopupMenuDivider(),

                                            PopupMenuItem<String>(
                                              value: 'edit',
                                              child: Text(
                                                'Edit Subject',
                                                style: TextFontStyle
                                                    .txtfntstyleFitree14w400c2E3227,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),

                                    UIHelper.customDivider(),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
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

                          //============= list view builder ==============
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: teacherList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(vertical: 16.h),
                                child: CustomTeacherCard(
                                  teacherImg: teacherList[index]['img'],
                                  teacherName:
                                      teacherList[index]['teachername'],
                                  usergmail: teacherList[index]['teachername'],
                                  joinedDate: teacherList[index]['joinDate'],
                                  sub1: teacherList[index]['sub1'],
                                  sub2: teacherList[index]['sub2'],
                                ),
                              );
                            },
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
