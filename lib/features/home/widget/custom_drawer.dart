import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                SizedBox(height: 56.0.h, width: 56.0.w),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Jenny Wilson"),
                    Text("jennywilaon@gmail.com"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
