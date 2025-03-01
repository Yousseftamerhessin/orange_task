// ignore_for_file: must_be_immutable

import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/shared_widgets/custom_button.dart';
import 'package:final_project/shared_widgets/custom_container_auth.dart';
import 'package:final_project/shared_widgets/custom_link.dart';
import 'package:final_project/shared_widgets/custom_text_input.dart';
import 'package:final_project/presentation/auth/cubit/auth_cubit.dart';
import 'package:final_project/presentation/auth/screens/login_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthRegisterLoading) {
              showDialog(
                context: context,
                builder: (context) =>
                    const Center(child: CircularProgressIndicator()),
              );
            }

            if (state is AuthRegisterSuccess) {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Registration Successful"),
              ));
            }

            if (state is AuthRegisterFailure) {
              // Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(state.message),
              ));
            }
          },
          builder: (context, state) {
            return SafeArea(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 24.h),
                      Text(
                        "Create your new \naccount",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColor.teaxtAppMainColor,
                          height: 1.5.h,
                        ),
                      ),
                      SizedBox(height: 24.h),
                      CustomTextInput(
                        hintText: 'Email Address',
                        labelText: 'Email address',
                        controller: emailController,
                      ),
                      SizedBox(height: 24.h),
                      CustomTextInput(
                        hintText: 'password',
                        labelText: 'Password',
                        controller: passwordController,
                        isPassword: true,
                        suffixicon: Icons.remove_red_eye_outlined,
                      ),
                      SizedBox(height: 24.h),
                      CustomTextInput(
                        hintText: 'Password',
                        labelText: 'Confirm Password',
                        controller: confirmPasswordController,
                        isPassword: true,
                        suffixicon: Icons.remove_red_eye_outlined,
                      ),
                      SizedBox(height: 24.h),
                      CustomButton(
                        label: 'Register',
                        onPressed: () {
                          context.read<AuthCubit>().register(
                                "ziad",
                                passwordController.text,
                                emailController.text,
                                "01120011456",
                              );
                        },
                      ),
                      SizedBox(height: 24.h),
                      Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: Divider(
                              thickness: 1,
                              color: AppColor.outlinegreyBorderColor,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            child: Text(
                              'or continue with',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.plusJakartaSans(
                                color: AppColor.secondarytextColor,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                height: 1.50,
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Divider(
                              thickness: 1,
                              color: AppColor.outlinegreyBorderColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.h),
                      CustomContainerAuth(
                        assetImagePath: "assets/imgs/google_icon.png",
                        container_text: "Continue with Google",
                      ),
                      SizedBox(height: 16.h),
                      CustomContainerAuth(
                        assetImagePath: "assets/imgs/facebook_logo.png",
                        container_text: "Continue with Facebook",
                      ),
                      SizedBox(height: 24.h),
                      CustomLink(
                        firstMAinLinktext: "Do you have an account?",
                        secondNameLinkText: "Login",
                        onpressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(height: 60.h),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
