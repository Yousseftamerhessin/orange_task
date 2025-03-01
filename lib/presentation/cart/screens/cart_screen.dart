import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/shared_widgets/custom_app_bar_container_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiteConstantColor,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomAppBarContainerIcon(
                containerIcon: Icons.arrow_back, ontapFn: () {}),
            Text(
              'Cart',
              textAlign: TextAlign.center,
              style: GoogleFonts.plusJakartaSans(
                color: AppColor.teaxtAppMainColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                height: 1.44.h,
              ),
            ),
            Container(
              width: 50.w,
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 44.h,),
          SizedBox(
            height: 270.h,
            width: 270.w,
            child: Image.asset("assets/imgs/cart.png"),
          ),
          SizedBox(
            height: 24.h,
          ),
          Center(
            child: Text(
              'Your cart is an empty!',
              
              style: GoogleFonts.plusJakartaSans(
                color: AppColor.teaxtAppMainColor,
                fontSize: 20.sp,
                
                fontWeight: FontWeight.w600,
                height: 1.40.h,
              ),
            ),
          ),
          SizedBox(height: 12.h,),
          Text(
    "Looks like you haven't added anything \nto your cart yet",
    textAlign: TextAlign.center,
    style: GoogleFonts.plusJakartaSans(
        color: AppColor.secondarytextColor,
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        height: 1.8.h,
    ),
)
      ],),
    );
  }
}
