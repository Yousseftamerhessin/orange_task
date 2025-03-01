import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/presentation/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBrowseFormfield extends StatelessWidget {
  final double width;
  final double height;
  final String hintText;
  final VoidCallback onpressedFn;
  const CustomBrowseFormfield(
      {super.key,
      required this.width,
      required this.height,
      required this.hintText,
      required this.onpressedFn});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(color: AppColor.whiteConstantColor),
      child: TextFormField(
        onFieldSubmitted: (value) {
          onpressedFn();
        },
        onChanged: (value) => context.read<HomeCubit>().searchProducts(value),
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: AppColor.buttonColor,
            size: 23.sp,
          ),
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(vertical: 10.h),
          hintStyle: GoogleFonts.plusJakartaSans(
            color: AppColor.borderhintTextColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            height: 1.50.h,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.r),
              borderSide: BorderSide(color: AppColor.outlinegreyBorderColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.r),
              borderSide: BorderSide(color: AppColor.buttonColor)),
        ),
      ),
    );
  }
}
