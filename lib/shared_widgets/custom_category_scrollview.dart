import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/shared_widgets/custom_categories_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCategoryScrollview extends StatelessWidget {
  const CustomCategoryScrollview({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            width: 80.w,
            height: 40.h,
            decoration: ShapeDecoration(
              color: AppColor.buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.r),
              ),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 4.w,
                ),
                Container(
                  width: 30.w,
                  height: 35.h,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                  ),
                  child: Center(
                    child: Icon(Icons.apps),
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  'All',
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColor.whiteConstantColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.29.h,
                  ),
                )
              ],
            ),
          ),
          CustomCategoriesContainer(categoryName: "Laptop", categoryIcon: '💻'),
          CustomCategoriesContainer(
              categoryName: "Accessories", categoryIcon: '🎧'),
          CustomCategoriesContainer(categoryName: "Phones", categoryIcon: '📱'),
        ],
      ),
    );
  }
}
