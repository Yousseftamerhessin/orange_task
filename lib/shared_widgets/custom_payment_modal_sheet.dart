import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/shared_widgets/custom_add_payment_method_container.dart';
import 'package:final_project/shared_widgets/custom_button.dart';


import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPaymentModalSheet extends StatelessWidget {
  final VoidCallback onpressedFn;
  const CustomPaymentModalSheet({super.key, required this.onpressedFn});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450.h,
      width: 375.w,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r)),
          color: AppColor.whiteConstantColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0.h),
            child: Center(
              child: Container(
                height: 4.h,
                width: 66.7.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11.r),
                    color: Colors.black.withOpacity(0.20000000298023224)),
              ),
            ),
          ),
          Text(
            'Add new payment method',
            style: GoogleFonts.plusJakartaSans(
              color: AppColor.teaxtAppMainColor,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              height: 1.44.h,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          CustomAddPaymentMethodContainer(
            imageAssetsUrl: "assets/imgs/credit.png",
            isSelected: false,
            subtitlePAyment: 'Pay with your Visa or Mastercard ',
            titlePayment: 'Credit or Debit Card',
          ),
          CustomAddPaymentMethodContainer(
            imageAssetsUrl: "assets/imgs/paypal.png",
            isSelected: true,
            subtitlePAyment: 'Pay with your Paybal account',
            titlePayment: 'Paypal',
          ),
          CustomAddPaymentMethodContainer(
            imageAssetsUrl: "assets/imgs/Gpay.png",
            isSelected: false,
            subtitlePAyment: 'Pay with your apple Wallet',
            titlePayment: 'Apple Pay',
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomButton(label: "Continue", onPressed: onpressedFn)
        ],
      ),
    );
  }
}
