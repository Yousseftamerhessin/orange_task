import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/shared_widgets/custom_app_bar_container_icon.dart';
import 'package:final_project/shared_widgets/custom_listnotifications.dart';
import 'package:final_project/shared_widgets/custom_notification_tiel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Notificationscreen extends StatelessWidget {
  Notificationscreen({super.key});
  final List<CustomNotificationTile> listofTodayNotifications = [
    CustomNotificationTile(
      mainTitle: '30% Special Discount!',
      subTitle: 'Special promotion only valid today',
      notificationIcon: Icon(
        Icons.discount,
        color: Colors.orange,
        size: 25.sp,
      ), onpressedfn: () {  },
    ),
    CustomNotificationTile(
      mainTitle: 'New Apple Promotion',
      subTitle: 'Special promo to all apple device',
      notificationIcon: Icon(
        Icons.apple,
        color: AppColor.buttonColor,
        size: 25.sp,
      ), onpressedfn: () {  },
    ),
  ];

  final List<CustomNotificationTile> listofYesterdayNotifications = [
    CustomNotificationTile(
      mainTitle: '40% Special Discount!',
      subTitle: 'Special offer for new account, valid until 20 Nov 2022',
      notificationIcon: Icon(
        Icons.discount,
        color: Colors.orange,
        size: 25.sp,
      ), onpressedfn: () {  },
    ),
    CustomNotificationTile(
      mainTitle: 'Special Offer! 50% Off',
      subTitle: 'Special offer for new account, valid until 20 Nov 2022',
      notificationIcon: Icon(
        Icons.discount,
        color: Colors.orange,
        size: 25.sp,
      ), onpressedfn: () {  },
    ),
    CustomNotificationTile(
      mainTitle: 'Credit Card Connected',
      subTitle: 'Special promotion only valid today',
      notificationIcon: Icon(
        Icons.credit_card,
        color: Colors.orange,
        size: 25.sp,
      ), onpressedfn: () {  },
    ),
    CustomNotificationTile(
      mainTitle: 'Account Setup Successfull!',
      subTitle: 'Special promotion only valid today',
      notificationIcon: Icon(
        Icons.person,
        color: AppColor.buttonColor,
        size: 25.sp,
      ), onpressedfn: () {  },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColor.whiteConstantColor,
          automaticallyImplyLeading: false,
          title: CustomAppBarContainerIcon(
            containerIcon: Icons.arrow_back,
            ontapFn: () {
              Navigator.pop(context);
            },
          )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25.0.h),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                child: Text(
                  'Your Notification',
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColor.teaxtAppMainColor,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    height: 1.25.h,
                  ),
                ),
              ),
            ),
            CustomListnotifications(
              listofcustomnotification: listofTodayNotifications,
              listText: "Today",
              listsize: 190.h,
            ),
            Container(
              width: 375.w,
              height: 4.h,
              decoration:
                  BoxDecoration(color: AppColor.notificationContainerColor),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25.0.h),
              child: CustomListnotifications(
                listofcustomnotification: listofYesterdayNotifications,
                listText: "Yesterday",
                listsize: 350.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
