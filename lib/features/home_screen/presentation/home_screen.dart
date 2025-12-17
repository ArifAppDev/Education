import 'dart:io';

import 'package:education/assets_helper/app_colors.dart';
import 'package:education/assets_helper/assets_fonts.dart';

import 'package:education/common_widgets/custom_button2.dart';
import 'package:education/constants/subject_assign_list.dart';

import 'package:education/features/home_screen/widget/custom_class_name.dart';
import 'package:education/features/home_screen/widget/custom_drawer.dart';
import 'package:education/features/home_screen/widget/custom_dropdown.dart';

import 'package:education/gen/colors.gen.dart';

import 'package:education/helpers/ui_helpers.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  XFile? _image;
  Future<void> _pickImageFromCamera() async {
    final pickedImage = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );
    if (pickedImage == null) return;
    setState(() {
      _image = XFile(pickedImage.path);
    });
  }

  Future<void> _pickImageFromGallary() async {
    final pickImage = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickImage == null) return;
    setState(() {
      _image = XFile(pickImage.path);
    });
  }

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
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: _pickImageFromGallary,
                        child: CircleAvatar(
                          backgroundImage: _image != null
                              ? FileImage(File(_image!.path)) as ImageProvider
                              : NetworkImage(
                                  "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Derech Erets",
                            style: TextFontStyle
                                .txtfontstyleFigtree16w600c2E3227
                                .copyWith(fontSize: 16),
                          ),
                          Text(
                            "Technion Israel Institute of Tec...",
                            style: TextFontStyle.txtfntstyleFitree12w400c59c53
                                .copyWith(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      GestureDetector(
                        onTap: _pickImageFromCamera,
                        child: Container(
                          padding: EdgeInsets.all(10.w),
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Text(
                            "Camera",
                            style: TextFontStyle.txtfntstyleFitree12w400c59c53
                                .copyWith(color: AppColor.cFFFFFFF),
                          ),
                        ),
                      ),

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
            ),
            UIHelper.verticalspace16,

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
                            style: TextFontStyle.txtfntstyleFitree14w400c2E3227,
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
                              style: TextFontStyle
                                  .txtfontstyleFigtree16w600c2E3227,
                            ),
                            SizedBox(height: 8.0.h),

                            Text(
                              AppConstants.addanewclassto,
                              style:
                                  TextFontStyle.txtfntstyleFitree14w400c2E3227,
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
