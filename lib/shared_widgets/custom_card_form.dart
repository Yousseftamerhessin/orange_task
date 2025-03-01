import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:final_project/presentation/payments/cubit/payment_cubit.dart';
import 'package:final_project/shared_widgets/custom_button.dart';
import 'package:final_project/shared_widgets/custom_text_input.dart';
import 'package:final_project/core/constants/app_color.dart';

class CustomCardForm extends StatelessWidget {
  const CustomCardForm({super.key});

  @override
  Widget build(BuildContext context) {
    final paymentCubit = context.read<PaymentCubit>(); // Get the cubit instance

    return Container(
      width: 375.w,
      height: 590.h,
      decoration: ShapeDecoration(
        color: AppColor.whiteConstantColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.r),
            topRight: Radius.circular(24.r),
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 160.h),
              CustomTextInput(
                hintText: "Card Holder Name",
                labelText: "Card Name",
                onChanged: (value) => paymentCubit.changeCardHolderName(value),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 18.0.h),
                child: CustomTextInput(
                  hintText: "Card Number",
                  labelText: "Card Number",
                  onChanged: (value) => paymentCubit.changeCardNumber(value),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: CustomTextInput(
                      hintText: "Expiry Date",
                      labelText: "Exp. Date",
                      onChanged: (value) => paymentCubit.changeExpiryDate(value),
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    flex: 1,
                    child: CustomTextInput(
                      hintText: "CVV",
                      labelText: "CVV",
                      onChanged: (value) => paymentCubit.changeCVV(value),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70.h),
              CustomButton(
                label: "Add Payment",
                onPressed: () {},
              ),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}

