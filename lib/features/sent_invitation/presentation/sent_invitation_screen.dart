import 'package:education/features/class_setting/widget/custom_app_bar_backButton.dart';
import 'package:education/features/sent_invitation/widget/custom_sent_invitationcard.dart';
import 'package:education/gen/colors.gen.dart';
import 'package:education/helpers/all_routes.dart';
import 'package:education/helpers/navigation_service.dart';
import 'package:education/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SentInvitationScreen extends StatelessWidget {
  const SentInvitationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.cFFFFFF,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ===================== Custom App Bar =====================
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: CustomAppBarBackbutton(
                  appbarName: 'Sent Invitations',
                  onTap: () {
                    NavigationService.goBack;
                  },
                ),
              ),
              UIHelper.verticalSpace(20.h),
              // ===================== First Card =====================
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    CustomSentInvitationCard(
                      teacheremail: 'mark@gmail.com',
                      subjectname: 'English',
                      sentdate: '12/03/2025',
                      status: 'Pending',
                      onTap: () {
                        NavigationService.navigateTo(
                          Routes.joinRequestTeacherScreen,
                        );
                      },
                    ),
                  ],
                ),
              ),

              UIHelper.verticalSpace(16.h),
            ],
          ),
        ),
      ),
    );
  }
}
