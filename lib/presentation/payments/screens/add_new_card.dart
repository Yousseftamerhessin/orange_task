// ignore_for_file: must_be_immutable

import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/shared_widgets/custom_app_bar_container_icon.dart';
import 'package:final_project/shared_widgets/custom_card_form.dart';

import 'package:final_project/shared_widgets/custom_master_card.dart';
import 'package:final_project/presentation/payments/cubit/payment_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentCubit(),
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xff294255),
                Color(0xff293A4D),
                Color(0xff303B4E),
                Color(0xff383D52),
                Color(0xff433C55),
                Color(0xff3E3F55),
              ],
            ),
          ),
          child: SafeArea(
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0.w, vertical: 10.h),
                      child: Row(
                        children: [
                          CustomAppBarContainerIcon(
                            containerIcon: Icons.arrow_back,
                            ontapFn: () {
                              Navigator.pop(context);
                            },
                            whitecolorIcon: true,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'Add New Card',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.plusJakartaSans(
                                  color: AppColor.whiteConstantColor,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                  height: 1.44.h,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: 189.h, left: 0, right: 0, child: CustomCardForm()),
                  Positioned(
                      top: 87.h,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                        child: CustomMasterCard(),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
