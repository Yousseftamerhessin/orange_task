import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/shared_widgets/custom_button.dart';
import 'package:final_project/presentation/auth/screens/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomModalBottomSheet extends StatelessWidget {
  const CustomModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 321.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColor.whiteConstantColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r))),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: Container(
                  height: 4.h,
                  width: 66.7.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11.r),
                      color: Colors.black.withOpacity(0.20000000298023224)),
                ),
              ),
              SizedBox(
                height: 29.h,
              ),
              Text(
                'Forget password',
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
              Text(
                'Select which contact details should we use to \nreset your password',
                style: GoogleFonts.plusJakartaSans(
                  color: AppColor.secondarytextColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  height: 1.8.h,
                ),
              ),
              Container(
                width: 335.w,
                height: 76.h,
                margin: EdgeInsets.symmetric(vertical: 24.h),
                padding: EdgeInsets.all(13.sp),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: 1.w, color: AppColor.outlinegreyBorderColor),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 44.w,
                      height: 44.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF3F6FB),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Icon(
                        Icons.mail_outline,
                        color: AppColor.buttonColor,
                      ),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Send via Email',
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColor.secondarytextColor,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            height: 1.67.h,
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          'bryan.adam83@gmail.com',
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColor.teaxtAppMainColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            height: 1.43.h,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              CustomButton(
                label: "Continue",
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> OtpScreen() ));
                },
              ),
              SizedBox(
                height: 8.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
