import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';
import 'package:education/common_widgets/custom_button.dart';
import 'package:education/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGeneralConfigureCard extends StatefulWidget {
  const CustomGeneralConfigureCard({super.key});

  @override
  State<CustomGeneralConfigureCard> createState() =>
      _CustomGeneralConfigureCardState();
}

class _CustomGeneralConfigureCardState
    extends State<CustomGeneralConfigureCard> {
  final TextEditingController emailController = TextEditingController();

  String dropDownValue = 'Grade 8';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColor.cDFE3E8, width: 1.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "General Configuration",
            style: TextFontStyle.txtfontstyleFigtree16w600c2E3227,
          ),
          Text(
            "Update basic class information",
            style: TextFontStyle.txtfntstyleFitree14w400c2E3227,
          ),
          UIHelper.verticalspace16,
          Text("Class Name"),
          UIHelper.verticalSpace(6.h),
          TextFormField(
            controller: emailController,

            decoration: InputDecoration(
              hintText: 'Mathematics 101',
              filled: true,
              fillColor: AppColor.cFFFFFFF,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(color: AppColor.cF0F0F0, width: 1.w),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(color: AppColor.cF0F0F0, width: 1.w),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: BorderSide(color: AppColor.cF0F0F0, width: 1.w),
              ),
            ),
          ),

          UIHelper.verticalspace12,

          Text("Grade"),
          UIHelper.verticalSpace(6.h),

          Container(
            padding: EdgeInsets.all(16.w),
            height: 44.h,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: AppColor.c2E3227, width: 0.5.w),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true,
                borderRadius: BorderRadius.circular(8.r),

                value: dropDownValue,
                icon: Row(
                  children: [
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Colors.blueGrey,
                    ),
                  ],
                ),
                style: TextStyle(color: AppColor.c595C53),

                items: [
                  DropdownMenuItem<String>(
                    value: 'Grade 8',
                    child: Text('Grade 8'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Grade 9',
                    child: Text('Grade 9'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Grade 10',
                    child: Text('Grade 10'),
                  ),
                ],
                onChanged: (String? newValue) {
                  setState(() {
                    dropDownValue = newValue!;
                  });
                },
              ),
            ),
          ),
          UIHelper.verticalspace20,

          //============== Custom button =============
          CustomButton(
            title: 'Save Changes',
            onTap: () {},
            containerColor: AppColor.primaryColor,
          ),
        ],
      ),
    );
  }
}
