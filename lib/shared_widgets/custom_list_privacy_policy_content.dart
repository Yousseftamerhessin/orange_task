import 'package:final_project/shared_widgets/custom_privacy_policy.dart';
import 'package:flutter/material.dart';

class CustomListPrivacyPolicyContent extends StatelessWidget {
  final List<CustomPrivacyPolicycontainer> listofPrivacyandPolicy;
  const CustomListPrivacyPolicyContent(
      {super.key, required this.listofPrivacyandPolicy});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listofPrivacyandPolicy.length,
      itemBuilder: (context, index) {
        return listofPrivacyandPolicy[index];
      },
    );
  }
}
