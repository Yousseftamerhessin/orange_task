// ignore_for_file: non_constant_identifier_names

import 'package:final_project/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainerAuth extends StatelessWidget {
  final String container_text;
  final String assetImagePath;
  const CustomContainerAuth({super.key, required this.assetImagePath, required this.container_text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 56.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.w, color: AppColor.outlinegreyBorderColor),
          borderRadius: BorderRadius.circular(34.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            assetImagePath,
            width: 24.w,
            height: 24.h,
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Text(
              container_text,
              textAlign: TextAlign.center,
              style: GoogleFonts.plusJakartaSans(
                color: AppColor.teaxtAppMainColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
          ),
          SizedBox(width: 36.w), // Adjust spacing for alignment
        ],
      ),
    );
  }
}
