import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/presentation/payments/cubit/payment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMasterCard extends StatelessWidget {
  const CustomMasterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentCubit, PaymentState>(
      builder: (context, state) {
        final paymentCubit = context.read<PaymentCubit>(); 

        return Container(
          width: 315.w,
          height: 235.h,
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            image: const DecorationImage(
              image: AssetImage("assets/imgs/card.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'SoCard',
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColor.whiteConstantColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    height: 1.44.sp,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  paymentCubit.cardNumber, 
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColor.whiteConstantColor,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                    height: 50.h,
                    width: 50.w,
                    child: Image.asset("assets/imgs/credit.png")),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Card holder name',
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColor.whiteConstantColor,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            height: 1.40.h,
                            
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          paymentCubit.cardHolderName,
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColor.whiteConstantColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            height: 1.14.h,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    SizedBox(width: 26.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Expiry Date',
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColor.whiteConstantColor,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            height: 1.40.h,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          paymentCubit.cardExpiryDate,
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColor.whiteConstantColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            height: 1.14.h,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
