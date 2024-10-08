import 'package:benefixs/core/extension/extension.dart';
import 'package:benefixs/core/theme/colors.dart';
import 'package:benefixs/core/utils/extension/widget_extensions.dart';
import 'package:benefixs/screens/authentication/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class ExploreBenefix extends StatefulWidget {
  const ExploreBenefix({super.key});

  @override
  State<ExploreBenefix> createState() => _ExploreBenefixState();
}

class _ExploreBenefixState extends State<ExploreBenefix> {
  void openWhatsAppGroup(String url) async {
    final Uri whatsappGroupUrl = Uri.parse(url);
    if (!await launchUrl(whatsappGroupUrl)) {
      throw "Could not launch $whatsappGroupUrl";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Image.asset('images/unleash.png'),
          20.0.h.spacingH,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 10.h),
            child: NavButton(
              label: 'Get A Free Discount',
              height: 55.h,
              labelColor: BenefixColors.textColor,
              radius: 5.r,
              buttonColor: Colors.white,
              fontSize: 18.sp,
              borderColor: BenefixColors.gray,
            ),
          ).appTouchable(() {
            openWhatsAppGroup(
                'https://chat.whatsapp.com/LgFnW99OmEKKY6shcTsxUS');
          }),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 8.h),
            child: NavButton(
              label: 'Referring Not Compulsory',
              height: 55.h,
              labelColor: BenefixColors.black,
              radius: 5.r,
              fontSize: 18.sp,
              buttonColor: Colors.white,
              borderColor: BenefixColors.gray,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 8.h),
            child: NavButton(
              label: 'One- Time Registration',
              height: 55.h,
              labelColor: BenefixColors.black,
              radius: 5.r,
              fontSize: 18.sp,
              buttonColor: Colors.white,
              borderColor: BenefixColors.gray,
            ).appTouchable(() {
              
            }),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 8.h),
            child: NavButton(
              label: 'No Hidden Fee',
              height: 55.h,
              labelColor: BenefixColors.black,
              radius: 5.r,
              fontSize: 18.sp,
              buttonColor: Colors.white,
              borderColor: BenefixColors.gray,
            ).appTouchable(() {
              
            }),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 8.h),
            child: NavButton(
              label: 'More Features Soon',
              height: 55.h,
              labelColor: BenefixColors.black,
              radius: 5.r,
              fontSize: 18.sp,
              buttonColor: Colors.white,
              borderColor: BenefixColors.gray,
            ).appTouchable(() {
    
            }),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 8.h),
            child: NavButton(
              
              label: 'Back',
              labelColor: Colors.white,
              borderColor: Colors.white,
              radius: 5.r,
            ).appTouchable(() {
              Navigator.pop(context);
            }),
          )
        ],
      ),
    );
  }
}
