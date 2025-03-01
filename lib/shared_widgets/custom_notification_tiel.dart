// ignore_for_file: must_be_immutable

import 'package:final_project/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomNotificationTile extends StatelessWidget {
  final String mainTitle;
  final String subTitle;
  final Icon notificationIcon;
  final bool suffixIcon;
  final bool disablesubtitle;
  final VoidCallback onpressedfn;

  const CustomNotificationTile({
    super.key,
    required this.mainTitle,
    required this.subTitle,
    required this.notificationIcon,
    this.disablesubtitle = false,
    this.suffixIcon = false,
    required this.onpressedfn,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0.h),
      child: GestureDetector(
        onTap: onpressedfn,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 48.w,
              height: 55.h,
              decoration: ShapeDecoration(
                color: AppColor.notificationContainerColor,
                shape: OvalBorder(),
              ),
              child: notificationIcon,
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!disablesubtitle)
                    Text(
                      mainTitle,
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColor.teaxtAppMainColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        height: 1.50.h,
                      ),
                    ),
                  if (!disablesubtitle) SizedBox(height: 6.h),
                  if (!disablesubtitle)
                    Text(
                      subTitle,
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColor.secondarytextColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        height: 1.6.h,
                      ),
                    ),
                  if (disablesubtitle)
                    SizedBox(
                      height: 15.h,
                    ),
                  if (disablesubtitle)
                    Text(
                      mainTitle,
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColor.teaxtAppMainColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        height: 1.50.h,
                      ),
                    ),
                ],
              ),
            ),
            if (suffixIcon)
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0.h),
                child: Icon(
                  Icons.arrow_forward,
                  size: 25.sp,
                  color: AppColor.buttonColor,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
