import 'package:final_project/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextInput extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextEditingController? controller; // Make it optional
  final bool isPassword;
  final IconData? suffixicon;
  final ValueChanged<String>? onChanged; // Add this

  const CustomTextInput({
    super.key,
    required this.hintText,
    required this.labelText,
    this.controller, 
    this.isPassword = false,
    this.suffixicon,
    this.onChanged, 
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 12.sp,
            color: AppColor.borderheadlineTextColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8),
        TextField(
          controller: controller, 
          obscureText: isPassword,
          onChanged: onChanged, 
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            suffixIcon: suffixicon == null
                ? null
                : Icon(suffixicon, size: 30.sp, color: AppColor.buttonColor),
            hintText: hintText,
            hintStyle: GoogleFonts.plusJakartaSans(
              color: AppColor.borderhintTextColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              height: 1.5.h,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide(
                color: AppColor.outlinegreyBorderColor,
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide(
                color: AppColor.outlinegreyBorderColor,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 1,
              ),
            ),
          ),
        )
      ],
    );
  }
}
