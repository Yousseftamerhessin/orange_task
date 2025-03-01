import 'package:final_project/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomOtpContainer extends StatelessWidget {
  const CustomOtpContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      height: 80.h,
      margin: EdgeInsets.symmetric(horizontal: 6.w),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: AppColor.whiteConstantColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.w, color: AppColor.outlinegreyBorderColor),
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
      child: Center(
        child: TextField(
          textAlign: TextAlign.center,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 32.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.zero,
          ),
          keyboardType: TextInputType.number,
          
        ),
      ),
    );
  }
}
