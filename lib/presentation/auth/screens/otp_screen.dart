import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/shared_widgets/custom_button.dart';
import 'package:final_project/shared_widgets/custom_otp_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiteConstantColor,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 50.w,
                height: 50.h,
                decoration: ShapeDecoration(
                  shape: CircleBorder(
                    side: BorderSide(
                        width: 1.w, color: AppColor.outlinegreyBorderColor),
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_back,
                    color: AppColor.buttonColor,
                    size: 22.sp,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 106.w,
            ),
            Text(
              'OTP',
              textAlign: TextAlign.center,
              style: GoogleFonts.plusJakartaSans(
                color: AppColor.teaxtAppMainColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                height: 1.44.h,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 44.h,
            ),
            Center(
              child: Container(
                height: 290.h,
                width: 300.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/imgs/otp.png"))),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              'Verification code',
              textAlign: TextAlign.center,
              style: GoogleFonts.plusJakartaSans(
                color: AppColor.teaxtAppMainColor,
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                height: 1.25.h,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Column(
              children: [
                Text(
                  'We have sent the code verification to you',
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColor.secondarytextColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.43.h,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'WhatsApp Number ',
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColor.secondarytextColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        height: 1.43.h,
                      ),
                    ),
                    Text(
                      '+62812 788 6XXXX',
                      style: GoogleFonts.plusJakartaSans(
                        color: AppColor.teaxtAppMainColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        height: 1.43.h,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 32.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Row(
                children: [
                  CustomOtpContainer(),
                  CustomOtpContainer(),
                  CustomOtpContainer(),
                  CustomOtpContainer(),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Recent code in 32s',
              textAlign: TextAlign.center,
              style: GoogleFonts.plusJakartaSans(
                color: AppColor.teaxtAppMainColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                height: 1.50.h,
              ),
            ),
            SizedBox(
              height: 71.h,
            ),
            CustomButton(
              label: "Continue",
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (tcontext) {
                      return Container(
                        width: 375.w,
                        height: 517.h,
                        decoration: ShapeDecoration(
                          color: AppColor.whiteConstantColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24.r),
                              topRight: Radius.circular(24.r),
                            ),
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              height: 4.h,
                              width: 66.7.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11.r),
                                  color: Colors.black
                                      .withOpacity(0.20000000298023224)),
                            ),
                            Container(
                              width: 243.w,
                              height: 243.h,
                              margin: EdgeInsets.symmetric(vertical: 24.h),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/imgs/otp_2.png"))),
                            ),
                            Text(
                              'Congratulations!',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.plusJakartaSans(
                                color: AppColor.teaxtAppMainColor,
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w600,
                                height: 1.25.h,
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                              child: Text(
                                'Your account is ready to use. You will be redirected to the Homepage in a few seconds.',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.plusJakartaSans(
                                  color: AppColor.secondarytextColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  height: 2.h,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 24.h,
                            ),
                            CustomButton(
                              label: "continue",
                              onPressed: () {},
                            )
                          ],
                        ),
                      );
                    });
              },
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
