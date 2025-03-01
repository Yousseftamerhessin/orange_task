import 'dart:ui';

import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/shared_widgets/custom_app_bar_container_icon.dart';
import 'package:final_project/shared_widgets/custom_button.dart';
import 'package:final_project/shared_widgets/custom_text_input.dart';
import 'package:final_project/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfileScreen extends StatelessWidget {
  final UserModel user;
  const EditProfileScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomAppBarContainerIcon(
                containerIcon: Icons.arrow_back,
                ontapFn: () {
                  Navigator.pop(context);
                }),
            Text(
              'Edit Profile',
              textAlign: TextAlign.center,
              style: GoogleFonts.plusJakartaSans(
                color: AppColor.teaxtAppMainColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                height: 1.44.h,
              ),
            ),
            Container(
              width: 30.w,
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 33.h,
              ),
              Center(
                  child: Container(
                width: 110.w, 
                height: 120.h,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fetbilarabi.com%2F%25D9%2585%25D9%258A%25D9%2583%25D8%25B3%2F%25D8%25A8%25D8%25B1%25D9%2586%25D8%25A7%25D9%2585%25D8%25AC-%25D8%25AA%25D8%25B1%25D9%2583%25D9%258A-%25D9%2585%25D8%25A7%25D8%25B1%25D8%25AA-%25D8%25B1%25D9%2585%25D8%25B6%25D8%25A7%25D9%2586-%25D8%25AF%25D9%258A%25D9%2585%25D9%258A%25D8%25B1-%25D9%2584%25D8%25AF%25D9%258A%25D9%2587-%25D9%2587%25D9%258A%25D8%25A8%25D8%25A9-%25D9%2585%25D9%2585%25D8%25AB%25D9%2584%25D9%258A%25D9%2586-%25D9%2587%25D9%2588%25D9%2584%25D9%258A%25D9%2588%25D9%2588%25D8%25AF&psig=AOvVaw2ZoUKOwimM5nrTLbT4NqcP&ust=1740898258722000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCJiMwMal6IsDFQAAAAAdAAAAABAE",
                    ),
                    fit: BoxFit.cover,
                  ),
                  shape: OvalBorder(),
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(100.r)),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          width: 75.75.w,
                          height: 20.5.h,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(0.r)),
                          alignment: Alignment.center,
                          child: Text(
                            'Edit',
                            style: GoogleFonts.plusJakartaSans(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            SizedBox(height: 25.h,),
            CustomTextInput(hintText: user.username!, labelText: 'FullName'),
            SizedBox(height: 16.h,),
            CustomTextInput(hintText: '12/12/1994', labelText: 'Date of Birth'),
            SizedBox(height: 16.h,),
            CustomTextInput(hintText: user.email!, labelText: 'Email'),
            SizedBox(height: 16.h,),
            CustomTextInput(hintText: user.phone!, labelText: 'Phone Number'),
            SizedBox(height: 16.h,),
            CustomTextInput(hintText: 'Male', labelText: 'Gender'),
            SizedBox(height: 16.h,),
            CustomButton(label: "Save Change", onPressed: (){}),
            SizedBox(height: 16.h,),
            ],
          ),
        ),
      ),
    );
  }
}
