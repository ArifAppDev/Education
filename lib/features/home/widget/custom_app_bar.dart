import 'package:education/assets_helper/assets_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  final String name;
  final String instituteName;

  const CustomAppBar({
    super.key,
    required this.name,
    required this.instituteName,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(height: 44, width: 44, child: Placeholder()),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextFontStyle.txtfontstyleFigtree16w600c2E3227
                            .copyWith(fontSize: 16),
                      ),
                      Text(
                        instituteName,
                        style: TextFontStyle.txtfntstyleFitree12w400c59c53
                            .copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),

              Row(
                children: [
                  SizedBox(height: 24, width: 24, child: Placeholder()),
                  SizedBox(width: 8),

                  GestureDetector(
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: SizedBox(
                      height: 24,
                      width: 24,
                      child: Placeholder(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
