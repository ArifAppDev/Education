import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';
import 'package:education/constants/join_request_list.dart';
import 'package:education/gen/colors.gen.dart';

import 'package:education/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JoinRequestSection extends StatelessWidget {
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(item['teachername']),
                        Text(item['date']),
                        PopupMenuButton<String>(
                          color: AppColor.cFFFFFFF,
                          icon: Image.asset(item['actions'], height: 20.h),
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
                            const PopupMenuDivider(),
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
    );
  }
}
