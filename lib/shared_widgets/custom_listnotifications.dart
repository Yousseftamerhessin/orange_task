import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/shared_widgets/custom_notification_tiel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListnotifications extends StatelessWidget {
  final String listText;
  final double listsize;
  final bool isScrollable;
  final List<CustomNotificationTile> listofcustomnotification;
  const CustomListnotifications(
      {super.key,
      required this.listText,
      required this.listsize,
      required this.listofcustomnotification,
      this.isScrollable = true
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            listText,
            style: GoogleFonts.plusJakartaSans(
              color: AppColor.secondarytextColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              height: 1.43.h,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
              height: listsize,
              
              child: ListView.separated(
                  physics: isScrollable ? null : NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) =>
                      listofcustomnotification[index],
                  separatorBuilder: (context, index) => Divider(
                        height: 1.h,
                        color: AppColor.outlinegreyBorderColor,
                      ),
                  itemCount: listofcustomnotification.length)),
        ],
      ),
    );
  }
}
