import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';

import 'package:education/common_widgets/custom_button2.dart';
import 'package:education/constants/app_constants.dart';
import 'package:education/features/home_screen/widget/custom_app_bar.dart';
import 'package:education/features/home_screen/widget/custom_class_name.dart';
import 'package:education/features/home_screen/widget/custom_drawer.dart';
import 'package:education/features/home_screen/widget/custom_dropdown.dart';

import 'package:education/gen/colors.gen.dart';

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
    return Scaffold(
      drawer: CustomDrawer(),
      //============== backround color ================
      backgroundColor: ColorName.cFFFFFF,
      body: SafeArea(
        child: Column(
          children: [
            //===================== custom App bar ====================
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: CustomAppBar(
                name: 'Derech Erets',
                instituteName: 'Technion Israel Institute of Tec...',
              ),
            ),

            UIHelper.customDivider(),

            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                      // =============== Custom dropdown ==============
                      CustomDropdown(),

                      UIHelper.verticalSpacemedium,

                      //==================== custom class name card ==============
                      CustomClassnameCard(),
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
