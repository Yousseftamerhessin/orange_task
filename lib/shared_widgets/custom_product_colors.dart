import 'package:final_project/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomProductColors extends StatelessWidget {
  const CustomProductColors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
                  'Space Grey',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColor.secondarytextColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.33.h,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Container(
                width: 32,
                height: 32,
                decoration: ShapeDecoration(
                  color: Color(0xFFE8E8EA),
                  shape: OvalBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: Container(
                width: 32,
                height: 32,
                decoration: ShapeDecoration(
                  color: Color(0xFFF2E0CC),
                  shape: OvalBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
              child: Container(
                width: 32,
                height: 32,
                decoration: ShapeDecoration(
                  color: Color(0xFFE8E8EA),
                  shape: OvalBorder(),
                ),
              ),
            ),
          ],
        ),
        Padding(
                  padding: EdgeInsets.symmetric(vertical: 22.0.h),
                  child: Container(
                    width: 375,
                    height: 4,
                    decoration: BoxDecoration(color: Color(0xFFF0F1F5)),
                  ),
                ),
      ],
    );
  }
}
