import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/shared_widgets/custom_home_icon_container.dart';
import 'package:final_project/models/user_model.dart';
import 'package:final_project/presentation/notification/screens/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHomeTopContainer extends StatelessWidget {
  final UserModel user;
  const CustomHomeTopContainer({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
          colors: [
            AppColor.secondcontainergridcolor,
            AppColor.secondcontainergridcolor,
            AppColor.secondcontainergridcolor,
            AppColor.thirdcontainergridcolor,
            AppColor.thirdcontainergridcolor,
            AppColor.thirdcontainergridcolor,
            AppColor.thirdcontainergridcolor,
            AppColor.thirdcontainergridcolor,
            AppColor.thirdcontainergridcolor,
            AppColor.fourthcontainergridcolor,
            AppColor.fourthcontainergridcolor,
            AppColor.fifthcontainergridcolor,
            AppColor.whiteConstantColor,
            AppColor.whiteConstantColor,
            AppColor.whiteConstantColor,
            AppColor.whiteConstantColor,
            AppColor.whiteConstantColor,
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Row(
              children: [
                CustomHomeIconContainer(
                  containerIcon: Icons.location_on,
                  ontapFunction: () {},
                ),
                SizedBox(
                  width: 15.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Location',
                      style: GoogleFonts.plusJakartaSans(
                        color: Colors.white.withOpacity(0.8999999761581421),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        height: 1.33.h,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      user.address!.city.toString(),
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColor.whiteConstantColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        height: 1.43.h,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 100.w,
                ),
                CustomHomeIconContainer(
                  containerIcon: Icons.notifications,
                  ontapFunction: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Notificationscreen()));
                  },
                ),
                SizedBox(
                  width: 12.w,
                ),
                CustomHomeIconContainer(
                  avatarImage:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQH5sFjZPx1Yzi1b9_FpQzrxqgsjv2DPAp81Q&s',
                  ontapFunction: () {},
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.h),
              child: Text(
                'Find best device for \nyour setup!',
                style: GoogleFonts.plusJakartaSans(
                  color: Colors.white,
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w600,
                  height: 1.5.h,
                ),
              ),
            ),
            SizedBox(
              height: 300.h,
              width: 335.w,
              child: Stack(
                clipBehavior: Clip.none, // 3shan amn3 enh my2sh mn el sora
                children: [
                  Container(
                    width: 335.w,
                    height: 225.h,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/imgs/Background.png"),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(21.r),
                    ),
                  ),
                  Positioned(
                    right: 15.w,
                    bottom: 35.h,
                    child: Image.asset(
                      "assets/imgs/headphones.png",
                      width: 150.w,
                      height: 300.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    top: 35.h,
                    left: 23.w,
                    child: Text(
                      'New Bing \nWireless \nEarphone',
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColor.whiteConstantColor,
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w700,
                        height: 1.4.h,
                      ),
                    ),
                  ),
                  Positioned(
                      left: 23.w,
                      top: 170.h,
                      child: Row(
                        children: [
                          Text(
                            'See Offer',
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColor.whiteConstantColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              height: 1.50.h,
                            ),
                          ),
                          SizedBox(
                            width: 6.w,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: AppColor.whiteConstantColor,
                            size: 20.sp,
                          )
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
