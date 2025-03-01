import 'package:final_project/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeIconContainer extends StatelessWidget {
  final IconData? containerIcon;
  final String? avatarImage;
  final VoidCallback ontapFunction;

  const CustomHomeIconContainer({
    super.key,
    this.containerIcon,
    this.avatarImage,
    required this.ontapFunction
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontapFunction,
      child: Container(
        width: 45.w,
        height: 55.h,
        decoration: ShapeDecoration(
          color: Colors.white.withOpacity(0.2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(34.r),
          ),
          image: avatarImage != null
              ? DecorationImage(
                  image: NetworkImage(avatarImage!),
                  fit: BoxFit.fill,
                )
              : null, // If no image, don't set DecorationImage
        ),
        child: containerIcon != null
            ? Center(
                child: Icon(
                  containerIcon,
                  color: AppColor.whiteConstantColor,
                ),
              )
            : null, // If no icon, don't add child
      ),
    );
  }
}
