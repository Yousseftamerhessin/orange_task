import 'package:final_project/core/constants/app_color.dart';
import 'package:final_project/shared_widgets/custom_app_bar_container_icon.dart';
import 'package:final_project/shared_widgets/custom_list_privacy_policy_content.dart';
import 'package:final_project/shared_widgets/custom_privacy_policy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyAndPolicyScreen extends StatelessWidget {
  PrivacyAndPolicyScreen({super.key});
  final List<CustomPrivacyPolicycontainer> listofprivacyandPolicyContainer = [
    CustomPrivacyPolicycontainer(
        maintextTitle: "1. Types of Data We Collect",
        secondTitle:
            "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
    CustomPrivacyPolicycontainer(
        maintextTitle: "2. Use of Your Personal Data",
        secondTitle:
            "Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."),
    CustomPrivacyPolicycontainer(
        maintextTitle: "3. Disclosure of Your Personal Data",
        secondTitle:
            "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of 'de Finibus Bonorum et Malorum' (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, 'Lorem ipsum dolor sit amet..', comes from a line in section 1.10.32.")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            CustomAppBarContainerIcon(
              containerIcon: Icons.arrow_back,
              ontapFn: () {
                Navigator.pop(context);
              },
            ),
            Expanded(
                child: Text(
              'Privacy policy',
              textAlign: TextAlign.center,
              style: GoogleFonts.plusJakartaSans(
                color: AppColor.teaxtAppMainColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                height: 1.44.h,
              ),
            )),
            Container(
              width: 40.w,
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: CustomListPrivacyPolicyContent(
            listofPrivacyandPolicy: listofprivacyandPolicyContainer),
      ),
    );
  }
}
