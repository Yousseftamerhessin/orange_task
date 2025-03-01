import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/shared_widgets/custom_timer_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHotdealsRow extends StatelessWidget {
  const CustomHotdealsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Hot deals🔥',
          style: GoogleFonts.plusJakartaSans(
            color: AppColor.teaxtAppMainColor,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            height: 1.44.h,
          ),
        ),
        SizedBox(
          width: 112.w,
        ),
        CustomTimerContainer(containerTime: "02"),
        Text(
          ":",
          style: GoogleFonts.plusJakartaSans(
              color: AppColor.teaxtAppMainColor, fontWeight: FontWeight.bold),
        ),
        CustomTimerContainer(containerTime: "12"),
        Text(
          ":",
          style: GoogleFonts.plusJakartaSans(
              color: AppColor.teaxtAppMainColor, fontWeight: FontWeight.bold),
        ),
        CustomTimerContainer(containerTime: "00"),
      ],
    );
  }
}
