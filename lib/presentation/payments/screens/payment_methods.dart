import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/shared_widgets/custom_app_bar_container_icon.dart';
import 'package:final_project/shared_widgets/custom_button.dart';
import 'package:final_project/shared_widgets/custom_payment_method_container.dart';
import 'package:final_project/shared_widgets/custom_payment_modal_sheet.dart';
import 'package:final_project/presentation/payments/cubit/payment_cubit.dart';
import 'package:final_project/presentation/payments/screens/add_new_card.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentCubit(),
      child: BlocConsumer<PaymentCubit, PaymentState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColor.whiteConstantColor,
            appBar: AppBar(
              backgroundColor: AppColor.whiteConstantColor,
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomAppBarContainerIcon(
                      containerIcon: Icons.arrow_back,
                      ontapFn: () {
                        Navigator.pop(context);
                      }),
                  Text(
                    'Payment Method',
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
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomPaymentMethodContainer(
                      imageAssetsUrl: "assets/imgs/credit.png",
                      cardNumber: '**** **** 0783 7873',
                      methodName: 'MasterCard'),
                  CustomPaymentMethodContainer(
                      imageAssetsUrl: "assets/imgs/paypal.png",
                      cardNumber: '**** **** 0783 7873',
                      methodName: 'PayPAl'),
                  CustomPaymentMethodContainer(
                      imageAssetsUrl: "assets/imgs/Gpay.png",
                      cardNumber: '**** **** 0783 7873',
                      methodName: 'Apple Pay'),
                  Spacer(),
                  CustomButton(
                    label: "Add New Payment",
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (tcontext) {
                            return CustomPaymentModalSheet(
                              onpressedFn: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AddNewCardScreen()));
                              },
                            );
                          });
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
