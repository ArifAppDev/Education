import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';
import 'package:education/constants/sent_invitation_list.dart';
import 'package:education/gen/colors.gen.dart';
import 'package:education/helpers/all_routes.dart';
import 'package:education/helpers/navigation_service.dart';
import 'package:education/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SentInvitationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Email
                        Expanded(
                          child: Text(
                            item['teacheremail'],
                            style: TextFontStyle.txtfntstyleFitree14w400c2E3227,
                          ),
                        ),

                        /// Status
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 4.h,
                          ),
                          decoration: BoxDecoration(
                            color: AppColor.cFAF5BF,
                            borderRadius: BorderRadius.circular(11.r),
                          ),
                          child: Text(
                            item['status'],
                            style: TextFontStyle.txtfntstyleFitree14w400c2E3227
                                .copyWith(color: AppColor.c984B00),
                          ),
                        ),

                        /// Actions
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
    );
  }
}
