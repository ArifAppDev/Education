import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';
import 'package:education/common_widgets/custom_button.dart';
import 'package:education/common_widgets/custom_button2.dart';
import 'package:education/constants/app_constants.dart';
import 'package:education/features/home_screen/widget/custom_app_bar.dart';
import 'package:education/features/home_screen/widget/custom_drawer.dart';
import 'package:education/features/home_screen/widget/custom_viewclass_button.dart';
import 'package:education/features/home_screen/widget/point_card_button.dart';
import 'package:education/gen/colors.gen.dart';
import 'package:education/helpers/all_routes.dart';
import 'package:education/helpers/navigation_service.dart';
import 'package:education/helpers/ui_helpers.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    String dropDownValue = 'Grade 4 - (Class Name)';

    return Scaffold(
      drawer: CustomDrawer(),
      //============== backround color ================
      backgroundColor: ColorName.cFFFFFF,
      body: SafeArea(
        child: Column(
          children: [
            //===================== custom App bar ====================
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: CustomAppBar(
                name: 'Derech Erets',
                instituteName: 'Technion Israel Institute of Tec...',
              ),
            ),

            UIHelper.customDivider(),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      UIHelper.verticalSpacemedium,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppConstants.selectClass,
                            style: TextFontStyle.txtfntstyleFitree14w400,
                          ),
                        ],
                      ),

                      UIHelper.verticalspacesmall,

                      Container(
                        padding: EdgeInsets.all(16.w),
                        width: MediaQuery.of(context).size.width,
                        height: 44.h,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                            color: AppColor.c2E3227,
                            width: 0.5.w,
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            isExpanded: true,
                            borderRadius: BorderRadius.circular(8.r),

                            value: dropDownValue,
                            icon: Row(
                              children: [
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.blueGrey,
                                ),
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
                      UIHelper.verticalSpacemedium,

                      Container(
                        padding: EdgeInsets.all(16.w),

                        width: MediaQuery.of(context).size.width,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: ColorName.cFFFFFF,
                          border: Border.all(
                            color: AppColor.c2E3227,
                            width: 0.5.w,
                          ),
                        ),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      AppConstants.classname,
                                      style: TextFontStyle
                                          .textFntstyleFitree16w600
                                          .copyWith(
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    UIHelper.verticalspaverysmall,

                                    Text(
                                      "Grade 8",
                                      style:
                                          TextFontStyle.txtfntstyleFitree14w400,
                                    ),
                                  ],
                                ),

                                SizedBox(
                                  height: 33.3.h,
                                  width: 33.3.w,
                                  child: Placeholder(),
                                ),
                              ],
                            ),
                            UIHelper.verticalspace16,

                            //==  point contyainer ===============
                            PointCardButton(
                              containerColor: AppColor.cBEDBFF,
                              title: 'Total Point',
                              point: '620',
                              containerBorderColor: AppColor.cBEDBFF,
                              iconContainerColor: AppColor.c1E88E5,
                              pointColor: AppColor.c1E88E5,
                            ),
                            UIHelper.verticalspace12,

                            PointCardButton(
                              containerColor: AppColor.cBE2FDEB,
                              title: 'Total Students',
                              point: '256',
                              containerBorderColor: AppColor.cBE2FDEB,
                              iconContainerColor: AppColor.c00A63E,
                              pointColor: AppColor.c00A63E,
                            ),
                            UIHelper.verticalspace12,

                            PointCardButton(
                              containerColor: AppColor.cE9D4FF,
                              title: 'Lessons Conducted',
                              point: '23',
                              containerBorderColor: AppColor.cE9D4FF,
                              iconContainerColor: AppColor.c9810FA,
                              pointColor: AppColor.c9810FA,
                            ),
                            UIHelper.verticalspace32,

                            //=================== first button===============
                            CustomViewclassButton(
                              title: 'View Students',
                              onTap: () {},
                            ),
                            UIHelper.verticalspace16,
                            //=================== second button===============
                            CustomViewclassButton(
                              title: 'Class Settings',
                              onTap: () {
                                NavigationService.navigateTo(
                                  Routes.classSettingScreen,
                                );
                              },
                            ),
                            UIHelper.verticalspace24,

                            CustomButton(title: 'View Students', onTap: () {}),
                          ],
                        ),
                      ),
                      UIHelper.verticalspace16,

                      Container(
                        padding: EdgeInsets.all(16.0),

                        width: MediaQuery.of(context).size.width,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ColorName.cFFFFFF,
                          border: Border.all(
                            color: AppColor.c2E3227,
                            width: 0.5,
                          ),
                        ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                color: AppColor.cE6E6E6CC,
                                borderRadius: BorderRadius.circular(34),
                              ),
                              child: Center(
                                child: SizedBox(
                                  height: 29.0.h,
                                  width: 29.0.w,
                                  child: Placeholder(),
                                ),
                              ),
                            ),
                            UIHelper.verticalspace16,

                            Text(
                              AppConstants.createNewClass,
                              style: TextFontStyle.textFntstyleFitree16w600,
                            ),
                            SizedBox(height: 8.0.h),

                            Text(
                              AppConstants.addanewclassto,
                              style: TextFontStyle.txtfntstyleFitree14w400,
                              textAlign: TextAlign.center,
                            ),

                            UIHelper.verticalspace24,

                            CustomButtontwo(
                              title: 'Create New Class',
                              onTap: () {},
                              containerBorderColor: AppColor.primaryColor,
                            ),
                          ],
                        ),
                      ),
                      UIHelper.verticalspace16,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
