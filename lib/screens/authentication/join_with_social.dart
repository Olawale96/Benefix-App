import 'package:benefixs/core/Sharedwidget/Reusablewidget/customtext.dart';
import 'package:benefixs/core/extension/extension.dart';
import 'package:benefixs/core/theme/colors.dart';
import 'package:benefixs/core/utils/extension/widget_extensions.dart';
import 'package:benefixs/screens/authentication/signin.dart';
import 'package:benefixs/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class Social {
  final String? image;
  final String? label;
  Social({required this.image, required this.label});
}

class JoinWithSocialMedia extends StatefulWidget {
  const JoinWithSocialMedia({super.key});

  @override
  State<JoinWithSocialMedia> createState() => _JoinWithSocialMediaState();
}

class _JoinWithSocialMediaState extends State<JoinWithSocialMedia> {
  List<Social> social = [
    Social(image: 'images/whatsapp.png', label: 'Join WhatsApp'),
    Social(image: 'images/whatsapp.png', label: 'Join WhatsApp Channel'),
    Social(image: 'images/telegram.png', label: 'Telegram'),
  ];
  void openWhatsAppGroup(String url) async {
    final Uri whatsappGroupUrl = Uri.parse(url);
    if (!await launchUrl(whatsappGroupUrl)) {
      throw "Could not launch $whatsappGroupUrl";
    }
  }

  void openTelegram(String username) async {
    final Uri telegramUrl = Uri.parse("https://t.me/$username");
    if (!await launchUrl(telegramUrl)) {
      throw "Could not launch $telegramUrl";
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );

        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Image.asset(
              'images/home2.png',
              fit: BoxFit.fitWidth,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0.w, vertical: 40.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Join Benefix through this link below',
                    fontSize: 17.sp,
                    textColor: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  16.h.spacingH,
                  CustomText(
                    text:
                        'Kick-start your financial freedom journey and message our agent to get a bonus',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w300,
                    textColor: Colors.white,
                  ),
                  20.0.h.spacingH,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(social.length, (index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 25.0.sp),
                        child: Column(
                          children: [
                            Image.asset(social[index].image!),
                            7.0.h.spacingH,
                            CustomText(
                              text: social[index].label,
                              fontSize: 8.sp,
                              
                              fontWeight: FontWeight.w300,
                              textColor: BenefixColors.white,
                            )
                          ],
                        ).appTouchable(() {
                          switch (index) {
                            case 0:
                              openWhatsAppGroup(
                                  'https://chat.whatsapp.com/LgFnW99OmEKKY6shcTsxUS');
                            case 1:
                              openWhatsAppGroup(
                                  'https://chat.whatsapp.com/F7QqkqkXV318SdQpwv6DuP');
                            case 2:
                              openTelegram('benefixofficial001');
                          }
                        }),
                      );
                    }),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: NavButton(
                label: 'Back',
                radius: 5.r,
              ).appTouchable(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              }),
            )
          ],
        ),
      ),
    );
  }
}
