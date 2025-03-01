import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:final_project/core/constants/app_color.dart';

class CustomNavigationbarItem extends BottomBarItem {
  CustomNavigationbarItem({
    required String buttonText,
    required IconData buttonIcon,
    required bool isSelected, // ✅ New parameter
  }) : super(
          icon: Container(
            height: 68,
            width: 75,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(buttonIcon, color: !isSelected ?AppColor.secondarytextColor  : AppColor.buttonColor ),
                const SizedBox(height: 4),
                Text(
                  buttonText,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: !isSelected ? AppColor.secondarytextColor : AppColor.buttonColor,
                  ),
                ),
              ],
            ),
          ),
          title: const SizedBox.shrink(),
          selectedColor: AppColor.buttonColor,
        );
}
