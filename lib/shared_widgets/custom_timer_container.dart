import 'package:final_project/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTimerContainer extends StatelessWidget {
  final String containerTime;
  const CustomTimerContainer({super.key, required this.containerTime});

  @override
  Widget build(BuildContext context) {
    return Container(
                    width: 24.w,
                    height: 30.h,
                    margin: EdgeInsets.symmetric(horizontal: 5.w),
                    decoration: ShapeDecoration(
                      color: Color(0xFFF2F2F2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.r)),
                    ),
                    child: Center(
                        child: Text(
                      containerTime,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColor.teaxtAppMainColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        height: 1.50.h,
                      ),
                    )),
                  );
  }
}
