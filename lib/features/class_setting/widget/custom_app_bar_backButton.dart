import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBarBackbutton extends StatelessWidget {
  final String appbarName;
  const CustomAppBarBackbutton({super.key, required this.appbarName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          SizedBox(height: 20.0.h, width: 20.0.w, child: Placeholder()),
          SizedBox(width: 5.0.w),
          Text(appbarName),
        ],
      ),
    );
  }
}
