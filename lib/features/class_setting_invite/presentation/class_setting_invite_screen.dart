import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';
import 'package:education/common_widgets/custom_top_button_unfilled.dart';

import 'package:education/constants/join_request_list.dart';
import 'package:education/constants/sent_invitation_list.dart';
import 'package:education/features/class_setting/widget/custom_app_bar_backButton.dart';
import 'package:education/features/class_setting_invite/widget/custom_invite_tea_card.dart';

import 'package:education/gen/colors.gen.dart';
import 'package:education/helpers/all_routes.dart';
import 'package:education/helpers/navigation_service.dart';
import 'package:education/helpers/ui_helpers.dart';
import 'package:education/provider/top_button_selection_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ClassSettingInviteScreen extends StatelessWidget {
  const ClassSettingInviteScreen({super.key});
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
      backgroundColor: ColorName.cFFFFFF,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            /// ================= custom app Bar =================
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomAppBarBackbutton(
                appbarName: 'Invites & Requests',
                onTap: () => NavigationService.goBack,
              ),
            ),

            UIHelper.verticalspace16,
            UIHelper.customDivider(),
            UIHelper.verticalSpace(20.h),

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
            UIHelper.verticalSpace(20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  /// Invite card
                  CustomteaInviteCard(
                    title: 'Invite Teachers',
                    subtitle:
                        'Send an invitation to a teacher to join your class',
                  ),

                  UIHelper.verticalspace24,

                  /// ========== SENT INVITATIONS ==========
                  Container(
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.c2E3227, width: 0.4.w),
                      borderRadius: BorderRadius.circular(8.r),
                      color: ColorName.cFFFFFF,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sent Invitations',
                          style: TextFontStyle.txtfontstyleFigtree16w600c2E3227,
                        ),

                        UIHelper.verticalspace16,
                        UIHelper.customDivider(),

                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: sentInvitationlist.length,
                          itemBuilder: (context, index) {
                            final item = sentInvitationlist[index];

                            return Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 12.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          item['teacheremail'],
                                          style: TextFontStyle
                                              .txtfntstyleFitree14w400c2E3227,
                                        ),
                                      ),

                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 8.w,
                                          vertical: 4.h,
                                        ),
                                        decoration: BoxDecoration(
                                          color: AppColor.cFAF5BF,
                                          borderRadius: BorderRadius.circular(
                                            11.r,
                                          ),
                                        ),
                                        child: Text(
                                          item['status'],
                                          style: TextFontStyle
                                              .txtfntstyleFitree14w400c2E3227
                                              .copyWith(
                                                color: AppColor.c984B00,
                                              ),
                                        ),
                                      ),

                                      PopupMenuButton<String>(
                                        color: AppColor.cFFFFFFF,
                                        padding: EdgeInsets.zero,
                                        icon: Image.asset(
                                          item['actions'],
                                          height: 20.h,
                                          width: 20.w,
                                        ),
                                        onSelected: (value) {
                                          if (value == 'view') {
                                            NavigationService.navigateTo(
                                              Routes.sentInvitationScreen,
                                            );
                                          }
                                        },
                                        itemBuilder: (_) => [
                                          const PopupMenuItem(
                                            value: 'view',
                                            child: Text('View Details'),
                                          ),
                                          const PopupMenuDivider(),
                                          const PopupMenuItem(
                                            value: 'cancel',
                                            child: Text('Cancel'),
                                          ),
                                          const PopupMenuDivider(),
                                          const PopupMenuItem(
                                            value: 'resend',
                                            child: Text('Resend'),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                if (index != sentInvitationlist.length - 1)
                                  UIHelper.customDivider(),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),

                  UIHelper.verticalspace24,

                  /// ========== JOIN REQUESTS ==========
                  Container(
                    padding: EdgeInsets.all(16.w),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.c2E3227, width: 0.4.w),
                      borderRadius: BorderRadius.circular(8.r),
                      color: ColorName.cFFFFFF,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Join Requests from Teachers',
                          style: TextFontStyle.txtfontstyleFigtree16w600c2E3227,
                        ),

                        UIHelper.verticalspace16,
                        UIHelper.customDivider(),

                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: joinrequestlist.length,
                          itemBuilder: (context, index) {
                            final item = joinrequestlist[index];

                            return Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 12.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(item['teachername']),
                                      Text(item['date']),
                                      PopupMenuButton<String>(
                                        color: AppColor.cFFFFFFF,
                                        icon: Image.asset(
                                          item['actions'],
                                          height: 20.h,
                                        ),
                                        onSelected: (value) {
                                          if (value == 'view') {
                                            // NavigationService.navigateTo(
                                            //   Routes.joinRequestTeacherScreen,
                                            // );
                                          }
                                        },
                                        itemBuilder: (_) => const [
                                          PopupMenuItem(
                                            value: 'approve',
                                            child: Text('Approve'),
                                          ),
                                          PopupMenuDivider(),
                                          PopupMenuItem(
                                            value: 'reject',
                                            child: Text('Reject'),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                if (index != joinrequestlist.length - 1)
                                  UIHelper.customDivider(),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),

                  UIHelper.verticalspace24,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
