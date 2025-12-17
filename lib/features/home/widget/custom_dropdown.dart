import 'package:education/assets_helper/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({super.key});

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    String dropDownValue = 'Grade 4 - (Class Name)';
    return Container(
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
              Icon(Icons.keyboard_arrow_down_rounded, color: Colors.blueGrey),
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
    );
  }
}
