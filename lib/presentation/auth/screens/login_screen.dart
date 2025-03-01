// ignore_for_file: must_be_immutable
import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/shared_widgets/custom_container_auth.dart';
import 'package:final_project/shared_widgets/custom_link.dart';
import 'package:final_project/shared_widgets/custom_modal_bottom_sheet.dart';
import 'package:final_project/presentation/auth/cubit/auth_cubit.dart';
import 'package:final_project/presentation/auth/screens/register_screen.dart';
import 'package:final_project/presentation/main_screen/screens/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../shared_widgets/custom_button.dart';
import '../../../shared_widgets/custom_text_input.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthLoginLoading) {
              showDialog(
                  context: context,
                  builder: (context) =>
                      Center(child: CircularProgressIndicator()));
            }

            if (state is AuthLoginSuccess) {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> MainScreen()));
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Success Login"),
              ));
            }

            if (state is AuthLoginFailure) {
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
                      "Login to your \naccount.",
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColor.teaxtAppMainColor,
                          height: 1.5.h),
                    ),
                    SizedBox(height: 24.h),
                    CustomTextInput(
                      hintText: 'Email address',
                      labelText: 'Email address',
                      controller: userNameController,
                    ),
                    SizedBox(height: 24.h),
                    CustomTextInput(
                      hintText: 'Password',
                      labelText: 'Password',
                      controller: passwordController,
                      isPassword: true,
                      suffixicon: Icons.remove_red_eye_outlined,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 24.0.h),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                builder: (tcontext) {
                                  return CustomModalBottomSheet();
                                });
                          },
                          child: Text(
                            'Forget password?',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.plusJakartaSans(
                              color: AppColor.teaxtAppMainColor,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                          ),
                        ),
                      ),
                    ),
                    CustomButton(
                        label: 'Login',
                        onPressed: () {
                          context.read<AuthCubit>().login(
                              userNameController.text, passwordController.text);
                        }),
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
                    SizedBox(
                      height: 24.h,
                    ),
                    CustomContainerAuth(
                      assetImagePath: "assets/imgs/google_icon.png",
                      container_text: "Continue with google",
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomContainerAuth(
                      assetImagePath: "assets/imgs/facebook_logo.png",
                      container_text: "Continue with facebook",
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    CustomLink(
                      firstMAinLinktext: "Don't have an account?",
                      secondNameLinkText: "Register",
                      onpressed: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                      },
                    ),
                    SizedBox(
                      height: 60.h,
                    )
                  ],
                ),
              ),
            ));
          },
        ),
      ),
    );
  }
}
