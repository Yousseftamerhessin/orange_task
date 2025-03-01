import 'package:final_project/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomProductDescription extends StatelessWidget {
  final String productDescription;
  const CustomProductDescription({super.key, required this.productDescription});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Product Description',
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
          productDescription,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.plusJakartaSans(
            color: AppColor.secondarytextColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            height: 1.43.h,
          ),
        ),
      ],
    );
  }
}
