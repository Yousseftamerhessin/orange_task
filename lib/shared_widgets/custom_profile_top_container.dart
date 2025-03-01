import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/shared_widgets/custom_app_bar_container_icon.dart';
import 'package:final_project/models/user_model.dart';
import 'package:final_project/presentation/profile/presentation/edit_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomProfileTopContainer extends StatelessWidget {
  final UserModel user;
  const CustomProfileTopContainer({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290.h,
      width: 375.w,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topCenter,
          colors: [
            AppColor.firstProfilecontainergridcolor,
            AppColor.firstProfilecontainergridcolor,
            AppColor.firstProfilecontainergridcolor,
            AppColor.secondProfilecontainergridcolor,
            AppColor.secondProfilecontainergridcolor,
            AppColor.thirdProfilecontainergridcolor,
            AppColor.whiteConstantColor,
            AppColor.whiteConstantColor,
            AppColor.whiteConstantColor,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomAppBarContainerIcon(
                containerIcon: Icons.arrow_back,
                ontapFn: () {},
              ),
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  'Profile',
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColor.teaxtAppMainColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.44.h,
                  ),
                ),
              ),
              CustomAppBarContainerIcon(
                containerIcon: Icons.edit,
                ontapFn: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> EditProfileScreen(user: user,)));
                },
              ),
            ],
          ),
          SizedBox(
            height: 33.h,
          ),
          Center(
            child: Container(
              width: 100.w,
              height: 120.h,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmb1SDFID_IwgMnAHPP8slltZGF4GVaKqNqg&s"),
                  fit: BoxFit.fill,
                ),
                shape: OvalBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Center(
            child: Text(
              user.username!,
              textAlign: TextAlign.center,
              style: GoogleFonts.plusJakartaSans(
                color: AppColor.teaxtAppMainColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                height: 1.44.h,
              ),
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Center(
            child: Text(
              user.email.toString(),
              style: GoogleFonts.plusJakartaSans(
                color: AppColor.secondarytextColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                height: 1.43.h,
              ),
            ),
          )
        ],
      ),
    );
  }
}
