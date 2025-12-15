import 'package:education/assets_helper/app_colors.dart';
import 'package:education/common_widgets/custom_button_filled.dart';
import 'package:education/common_widgets/custom_top_button_unfilled.dart';
import 'package:education/features/class_setting/widget/custom_app_bar_backButton.dart';
import 'package:education/features/class_setting_invite/widget/custom_invite_tea_card.dart';
import 'package:education/features/class_setting_invite/widget/join_request_card.dart';
import 'package:education/features/class_setting_invite/widget/sent_invitation_card.dart';
import 'package:education/gen/colors.gen.dart';
import 'package:education/helpers/all_routes.dart';
import 'package:education/helpers/navigation_service.dart';
import 'package:education/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClassSettingInviteScreen extends StatelessWidget {
  const ClassSettingInviteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.cFFFFFF,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            /// ================= App Bar =================
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomAppBarBackbutton(
                appbarName: 'Invites & Requests',
                onTap: () => Navigator.pop(context),
              ),
            ),

            UIHelper.verticalspace16,
            UIHelper.customDivider(),

            /// ================= Top Tabs =================
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomTopButtonUnFilled(
                      title: 'Subjects & Teachers',
                      onTap: () {
                        NavigationService.navigateTo(
                          Routes.subjectAndTeacherScreen,
                        );
                      },
                    ),
                    UIHelper.horizontalspace12,
                    CustomButtonFilled(
                      fillColor: AppColor.cF0F0F0,
                      title: 'Invites & Requests',
                      onTap: () {},
                    ),
                    UIHelper.horizontalspace12,
                    CustomTopButtonUnFilled(
                      title: 'General Settings',
                      onTap: () {
                        NavigationService.navigateTo(
                          Routes.generalsettingscreen,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),

            /// ================= Page Content =================
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
                  SentInvitationSection(),

                  UIHelper.verticalspace24,

                  /// ========== JOIN REQUESTS ==========
                  JoinRequestSection(),

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
