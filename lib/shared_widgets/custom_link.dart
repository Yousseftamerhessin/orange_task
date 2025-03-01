import 'package:final_project/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomLink extends StatelessWidget {
  final String firstMAinLinktext;
  final String secondNameLinkText;
  final VoidCallback onpressed;
  const CustomLink(
      {super.key,
      required this.onpressed,
      required this.firstMAinLinktext,
      required this.secondNameLinkText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          firstMAinLinktext,
          style: GoogleFonts.plusJakartaSans(
              color: AppColor.secondarytextColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          width: 5.w,
        ),
        GestureDetector(
          onTap: onpressed,
          child: Text(
            secondNameLinkText,
            style: GoogleFonts.plusJakartaSans(
              color: AppColor.linksecondcolour,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              height: 1.50.h,
            ),
          ),
        ),
      ],
    );
  }
}
