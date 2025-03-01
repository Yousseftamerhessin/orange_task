import 'package:final_project/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPrivacyPolicycontainer extends StatelessWidget {
  final String maintextTitle;
  final String secondTitle;
  const CustomPrivacyPolicycontainer(
      {super.key, required this.maintextTitle, required this.secondTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            maintextTitle,
            style: GoogleFonts.plusJakartaSans(
              color: AppColor.teaxtAppMainColor,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              height: 1.44.h,
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Text(
            secondTitle,
            style: GoogleFonts.plusJakartaSans(
              color: AppColor.secondarytextColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              height: 1.43.h,
            ),
          )
        ],
      ),
    );
    
  }
}
