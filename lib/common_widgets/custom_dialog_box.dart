import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';
import 'package:education/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDialogBox extends StatefulWidget {
  const CustomDialogBox({super.key});

  @override
  State<CustomDialogBox> createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  String dropDownValue = 'Grade 4 - (Class Name)';
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: AppColor.cFFFFFFF,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,

          children: [
            Text(
              "Add New Subject",
              style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            UIHelper.verticalSpace(2.h),
            Text(
              "Create a new subject and optionally assign a teacher",
              style: TextFontStyle.txtfntstyleFitree14w400c2E3227,
            ),
            UIHelper.verticalSpace(20),
            Text(
              "Subject Name",
              style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
            UIHelper.verticalSpace(8.h),

            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter subject name",

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
            UIHelper.verticalSpace(16.h),
            Text(
              "Assign a Teacher",
              style: TextFontStyle.txtfontstyleFigtree16w600c2E3227.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
            UIHelper.verticalSpace(8.h),

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
                      Icon(Icons.arrow_drop_down, color: Colors.blueGrey),
                    ],
                  ),
                  style: TextStyle(color: AppColor.c595C53),

                  items: [
                    DropdownMenuItem<String>(
                      value: 'Grade 4 - (Class Name)',
                      child: Text('Grade 4 - (Class Name)'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Grade 5 - (Class Name)',
                      child: Text('Grade 5 - (Class Name)'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Grade 6 - (Class Name)',
                      child: Text('Grade 6 - (Class Name)'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Grade 7 - (Class Name)',
                      child: Text('Grade 7 - (Class Name)'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Grade 8 - (Class Name)',
                      child: Text('Grade 8 - (Class Name)'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Create New Class',
                      child: Text('+ Create New Class'),
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
            UIHelper.verticalSpace(32.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 13.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColor.cFFFFFFF,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: AppColor.cDFE3E8, width: 1.w),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Cancel",
                        style: TextFontStyle.txtfntstyleFitree14w400c2E3227
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 13.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: AppColor.cDFE3E8, width: 1.w),
                  ),
                  child: Center(
                    child: Text(
                      "Add Subject",
                      style: TextFontStyle.txtfntstyleFitree14w400c2E3227
                          .copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColor.cFFFFFFF,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
