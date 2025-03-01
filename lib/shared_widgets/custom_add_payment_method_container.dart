import 'package:final_project/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAddPaymentMethodContainer extends StatelessWidget {
  final String imageAssetsUrl;
  final bool isSelected;
  final String subtitlePAyment;
  final String titlePayment;
  const CustomAddPaymentMethodContainer(
      {super.key,
      required this.imageAssetsUrl,
      required this.isSelected,
      required this.subtitlePAyment, required this.titlePayment});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 76.h,
      margin: EdgeInsets.symmetric(vertical: 13.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 1,
              color: isSelected
                  ? Color(0xFFFF9C44)
                  : AppColor.outlinegreyBorderColor),
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 40.w,
            height: 40.h,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imageAssetsUrl), fit: BoxFit.contain)),
          ),
          SizedBox(
            width: 16.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isSelected)
                Text(
                  titlePayment,
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColor.teaxtAppMainColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.43.h,
                  ),
                ),
              if (isSelected)
                SizedBox(
                  //8
                  height: 5.h,
                ),
              if (isSelected)
                Text(
                  subtitlePAyment,
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColor.secondarytextColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.33.h,
                  ),
                ),
              if (isSelected == false)
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 11.0.h),
                  child: Text(
                    titlePayment,
                    style: GoogleFonts.plusJakartaSans(
                      color: AppColor.teaxtAppMainColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.43.h,
                    ),
                  ),
                ),
            ],
          ),
          Spacer(),
          Container(
              width: 24.w,
              height: 24.h,
              decoration: ShapeDecoration(
                  color:
                      isSelected ? Colors.orange : AppColor.whiteConstantColor,
                  shape: CircleBorder(
                      side: BorderSide(color: AppColor.whitegreyColor))),
              child: isSelected
                  ? Center(
                      child: Icon(
                      Icons.check,
                      color: AppColor.whiteConstantColor,
                      size: 15.sp,
                    ))
                  : null),
        ],
      ),
    );
  }
}
