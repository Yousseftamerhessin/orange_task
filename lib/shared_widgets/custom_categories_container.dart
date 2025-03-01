import 'package:final_project/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCategoriesContainer extends StatelessWidget {
  final String categoryName;
  final String categoryIcon;
  const CustomCategoriesContainer({super.key, required this.categoryName, required this.categoryIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 45.h,
      margin: EdgeInsets.symmetric(horizontal: 12.w) ,
      padding: EdgeInsets.symmetric(horizontal: 4),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: AppColor.whiteConstantColor),
          borderRadius: BorderRadius.circular(30.r),
        ),
      ),
      child: Center(
        child: Row(
          children: [
            Container(
              width: 32.w,
              height: 32.h,
              decoration: ShapeDecoration(
                color: Color(0xFFF3F6FB),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: Center(
                child: Text(
                  categoryIcon,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    height: 1.71.h,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            Text(
              categoryName,
              style: GoogleFonts.plusJakartaSans(
                color: AppColor.teaxtAppMainColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                height: 1.29.h,
              ),
            )
          ],
        ),
      ),
    );
  }
}
