import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/shared_widgets/custom_listnotifications.dart';
import 'package:final_project/shared_widgets/custom_notification_tiel.dart';
import 'package:final_project/shared_widgets/custom_profile_top_container.dart';
import 'package:final_project/presentation/home/cubit/home_cubit.dart';
import 'package:final_project/presentation/notification/presentation/notification_screen.dart';
import 'package:final_project/presentation/payments/screens/payment_methods.dart';
import 'package:final_project/presentation/privacy&policy/presentation/privacy_and_policy_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CustomNotificationTile> litofCustomTiles = [
      CustomNotificationTile(
        mainTitle: "Address",
        disablesubtitle: true,
        suffixIcon: true,
        notificationIcon: Icon(
          Icons.location_on_outlined,
          size: 25.sp,
          color: AppColor.buttonColor,
        ),
        subTitle: '',
        onpressedfn: () {},
      ),
      CustomNotificationTile(
        mainTitle: "Payment Methods",
        disablesubtitle: true,
        suffixIcon: true,
        notificationIcon: Icon(
          Icons.credit_card_outlined,
          size: 25.sp,
          color: AppColor.buttonColor,
        ),
        subTitle: '',
        onpressedfn: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => PaymentMethods()));
        },
      ),
      CustomNotificationTile(
        mainTitle: "Notifications",
        disablesubtitle: true,
        suffixIcon: true,
        notificationIcon: Icon(
          Icons.notifications_outlined,
          size: 25.sp,
          color: AppColor.buttonColor,
        ),
        subTitle: '',
        onpressedfn: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Notificationscreen()));
        },
      ),
      CustomNotificationTile(
        mainTitle: "Account Security",
        disablesubtitle: true,
        suffixIcon: true,
        notificationIcon: Icon(
          Icons.safety_check_outlined,
          size: 25.sp,
          color: AppColor.buttonColor,
        ),
        subTitle: '',
        onpressedfn: () {},
      ),
    ];
    final List<CustomNotificationTile> litofCustomTiles2 = [
      CustomNotificationTile(
        mainTitle: "Invite Friends",
        disablesubtitle: true,
        suffixIcon: true,
        notificationIcon: Icon(
          Icons.person_add_rounded,
          size: 25.sp,
          color: AppColor.buttonColor,
        ),
        subTitle: '',
        onpressedfn: () {},
      ),
      CustomNotificationTile(
        mainTitle: "Privacy Policy ",
        disablesubtitle: true,
        suffixIcon: true,
        notificationIcon: Icon(
          Icons.enhanced_encryption_outlined,
          size: 25.sp,
          color: AppColor.buttonColor,
        ),
        subTitle: '',
        onpressedfn: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PrivacyAndPolicyScreen()));
        },
      ),
      CustomNotificationTile(
        mainTitle: "Help Center",
        disablesubtitle: true,
        suffixIcon: true,
        notificationIcon: Icon(
          Icons.emergency_outlined,
          size: 25.sp,
          color: AppColor.buttonColor,
        ),
        subTitle: '',
        onpressedfn: () {},
      ),
    ];

    return BlocProvider(
      create: (context) => HomeCubit()..getUserData(),
      child: Scaffold(
        body: SafeArea(
          child: BlocConsumer<HomeCubit, HomeState>(
            listener: (context, state) {
              if (state is HomeUserLoading) {
                showDialog(
                    context: context,
                    builder: (context) =>
                        Center(child: CircularProgressIndicator()));
              }
            },
            builder: (context, state) {
              final cubit = context.read<HomeCubit>();
              if (cubit.userData == null) {
                return Center(child: CircularProgressIndicator());
              }
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    CustomProfileTopContainer(
                      user: cubit.userData!,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        width: 375.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(35.r),
                                topRight: Radius.circular(35.r)),
                            color: AppColor.whiteConstantColor,
                            border: Border(
                                top: BorderSide(
                                    color:
                                        AppColor.firstProfilecontainergridcolor,
                                    width: 1.h))),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 24.h,
                            ),
                            Container(
                              width: 375.w,
                              height: 4.h,
                              decoration: BoxDecoration(
                                  color: AppColor.notificationContainerColor),
                            ),
                            SizedBox(
                              height: 28.h,
                            ),
                            CustomListnotifications(
                                isScrollable: false,
                                listText: "Account Settings",
                                listsize: 360.h,
                                listofcustomnotification: litofCustomTiles),
                            Container(
                              width: 375.w,
                              height: 4.h,
                              decoration: BoxDecoration(
                                  color: AppColor.notificationContainerColor),
                            ),
                            SizedBox(
                              height: 24.h,
                            ),
                            CustomListnotifications(
                                isScrollable: false,
                                listText: "General",
                                listsize: 299.h,
                                listofcustomnotification: litofCustomTiles2),
                            Container(
                              width: 375.w,
                              height: 4.h,
                              decoration: BoxDecoration(
                                  color: AppColor.notificationContainerColor),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0.w, vertical: 24.h),
                              child: Row(
                                children: [
                                  Container(
                                    width: 48.w,
                                    height: 55.h,
                                    decoration: ShapeDecoration(
                                      color:
                                          AppColor.notificationContainerColor,
                                      shape: OvalBorder(),
                                    ),
                                    child: Icon(
                                      Icons.door_back_door,
                                      size: 25.sp,
                                      color: Color(0xFFFF5843),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text(
                                    'Logout',
                                    style: GoogleFonts.plusJakartaSans(
                                      color: Color(0xFFFF5843),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      height: 1.50.h,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
