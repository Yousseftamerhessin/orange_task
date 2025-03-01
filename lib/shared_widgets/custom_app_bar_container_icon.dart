// ignore_for_file: must_be_immutable

import 'package:final_project/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBarContainerIcon extends StatelessWidget {
  final IconData containerIcon;
  final VoidCallback ontapFn;
  final bool whitecolorIcon;
  const CustomAppBarContainerIcon(
      {super.key,
      required this.containerIcon,
      required this.ontapFn,
      this.whitecolorIcon = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontapFn,
      child: Container(
        width: 37.w,
        height: 44.h,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
                width: whitecolorIcon ? 0.5 : 2,
                color: AppColor.outlinegreyBorderColor),
            borderRadius: BorderRadius.circular(34.r),
          ),
        ),
        child: Center(
          child: Icon(
            containerIcon,
            color: whitecolorIcon
                ? AppColor.whiteConstantColor
                : AppColor.buttonColor,
            size: whitecolorIcon ? 19.sp : 22.sp,
          ),
        ),
      ),
    );
  }
}
