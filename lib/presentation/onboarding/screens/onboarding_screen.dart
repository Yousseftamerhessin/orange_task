import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/presentation/auth/screens/login_screen.dart';
import 'package:final_project/presentation/onboarding/cubit/onboard_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardCubit(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.whiteConstantColor,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text(
                  'Skip',
                  textAlign: TextAlign.right,
                  style: GoogleFonts.plusJakartaSans(
                    color: AppColor.teaxtAppMainColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: BlocConsumer<OnboardCubit, OnboardState>(
            listener: (context, state) {},
            builder: (context, state) {
              return AnimationLimiter(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 700),
                  transitionBuilder: (Widget child, Animation<double> animation) {
                    return FadeTransition(
                      opacity: animation,
                      child: ScaleTransition(scale: animation, child: child),
                    );
                  },
                  child: Column(
                    key: ValueKey<int>(context.read<OnboardCubit>().index),
                    children: AnimationConfiguration.toStaggeredList(
                      duration: const Duration(milliseconds: 200),
                      childAnimationBuilder: (widget) => ScaleAnimation(
                        scale: 0.3,
                        child: FadeInAnimation(child: widget),
                      ),
                      children: [
                        Row(),
                        SizedBox(height: 80.h),
                        SizedBox(
                          height: 247.5.h,
                          width: 253.09.w,
                          child: Image.asset(context
                              .read<OnboardCubit>()
                              .listofImagesPAth[context.read<OnboardCubit>().index]),
                        ),
                        SizedBox(height: 64.64.h),
                        Text(
                          context
                              .read<OnboardCubit>()
                              .listofTitles[context.read<OnboardCubit>().index],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColor.teaxtAppMainColor,
                            fontSize: 28.sp,
                            fontWeight: FontWeight.w600,
                            height: 1.21.sp,
                          ),
                        ),
                        SizedBox(height: 16.h),
                        Text(
                          context
                              .read<OnboardCubit>()
                              .listofSubtitle[context.read<OnboardCubit>().index],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColor.secondarytextColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            height: 1.43.sp,
                          ),
                        ),
                        SizedBox(height: 32.h),
                        SizedBox(
                          width: 94.w,
                          height: 94.w,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                width: 94.r,
                                height: 94.r,
                                child: CircularProgressIndicator(
                                  value: 1.0,
                                  strokeWidth: 2.w,
                                  valueColor:
                                      AlwaysStoppedAnimation(AppColor.whitegreyColor),
                                ),
                              ),
                              SizedBox(
                                width: 94.r,
                                height: 94.r,
                                child: CircularProgressIndicator(
                                  value: context.read<OnboardCubit>().percentage,
                                  strokeWidth: 2.w,
                                  valueColor:
                                      AlwaysStoppedAnimation(AppColor.buttonColor),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.read<OnboardCubit>().nextPageOnboard();
                                },
                                onDoubleTap: () {
                                  context.read<OnboardCubit>().index ==
                                          context
                                                  .read<OnboardCubit>()
                                                  .listofImagesPAth
                                                  .length -
                                              1
                                      ? Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => LoginScreen()))
                                      : null;
                                },
                                child: Container(
                                  width: 58.w,
                                  height: 58.h,
                                  decoration: BoxDecoration(
                                    color: AppColor.buttonColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Icon(Icons.arrow_forward,
                                        color: AppColor.whiteConstantColor,
                                        size: 24.r),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
