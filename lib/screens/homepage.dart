import 'package:benefixs/core/Sharedwidget/Reusablewidget/customtext.dart';
import 'package:benefixs/core/extension/extension.dart';
import 'package:benefixs/core/theme/colors.dart';
import 'package:benefixs/core/utils/extension/widget_extensions.dart';
import 'package:benefixs/screens/about_benefix.dart';
import 'package:benefixs/screens/authentication/signUp.dart';
import 'package:benefixs/screens/authentication/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   void openWhatsAppGroup(String url) async {
    final Uri whatsappGroupUrl = Uri.parse(url);
    if (!await launchUrl(whatsappGroupUrl)) {
      throw "Could not launch $whatsappGroupUrl";
    }
  }
     void getCode (String url) async {
    final Uri whatsappGroupUrl = Uri.parse(url);
    if (!await launchUrl(whatsappGroupUrl)) {
      throw "Could not launch $whatsappGroupUrl";
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Stack(children: [
              Image.asset('images/homeImage.png'),
              Positioned(
                  top: 110.h,
                  right: 20.w,
                  child: Image.asset('images/benefix2.png')),
              Positioned(
                bottom: 20.h,
                left: 30.w,
                child: CustomText(
                  text: 'Get Started With Benefix',
                  fontSize: 18.sp,
                  textColor: BenefixColors.primary,
                  fontWeight: FontWeight.w600,
                ),
              )
            ]),
            30.0.h.spacingH,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: NavButton(
                borderColor: Colors.white,
                label: 'Register Now',
                height: 55.h,
                fontSize: 18.sp,
                radius: 5.r,
              ),
            ).appTouchable(() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const SignUp()));
            }),
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
              padding: EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 10.h),
              child: NavButton(
                label: 'Benefix Earning Model',
                height: 55.h,
                labelColor: BenefixColors.black,
                radius: 5.r,
                fontSize: 18.sp,
                buttonColor: Colors.white,
                borderColor: BenefixColors.gray,
              ),
            ),
                        Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 10.h),
              child: NavButton(
                label: 'Get Code',
                height: 55.h,
                labelColor: BenefixColors.textColor,
                radius: 5.r,
                buttonColor: Colors.white,
                fontSize: 18.sp,
                borderColor: BenefixColors.gray,
              ),
            ).appTouchable(() {
            openWhatsAppGroup(
                'https://wa.link/fcaozm');
          }),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 10.h),
              child: NavButton(
                label: 'About Benefix',
                height: 55.h,
                labelColor: BenefixColors.black,
                radius: 5.r,
                fontSize: 18.sp,
                buttonColor: Colors.white,
                borderColor: BenefixColors.gray,
              ).appTouchable(() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const AboutBenefix()));
            }),
            )
          ],
        ),
      ),
    );
  }
}
