import 'package:benefixs/core/Sharedwidget/Reusablewidget/customtext.dart';
import 'package:benefixs/core/extension/extension.dart';
import 'package:benefixs/core/utils/extension/widget_extensions.dart';
import 'package:benefixs/screens/authentication/signin.dart';
import 'package:benefixs/screens/explore_benefix.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutBenefix extends StatelessWidget {
  const AboutBenefix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'images/about.png',
            fit: BoxFit.fitWidth,
          ),
          20.0.h.spacingH,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              children: [
                CustomText(
                  text: 'About Benefix',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
                20.0.h.spacingH,
                CustomText(
                  text:
                      'We are pioneers in the digital economy, committed to empowering individuals to achieve financial freedom through the strategic use of social media. Our team is made up of digital marketing experts, financial strategists, and technology enthusiasts who understand the power of online platforms in shaping financial futures. We believe in the limitless potential of the digital world, and we’re here to guide our users in harnessing that potential to create real, sustainable income.',
                  fontSize: 12.sp,
                  textAlign: TextAlign.justify,
                  fontWeight: FontWeight.w300,
                  textColor: Color(0XFF343434),
                ),
                20.0.h.spacingH,
                CustomText(
                  text: 'Our Mission',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
                16.0.h.spacingH,
                CustomText(
                  text:
                      'To inspire, educate , and equip our users with the tools and knowledge they need to thrive in the digital landscape. By leveraging the power of TikTok, Facebook, and Instagram, we aim to transform the way people think about earning online turning everyday social media activities into profitable ventures',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w300,
                  textAlign: TextAlign.justify,
                  textColor: Color(0XFF343434),
                ),
                
              ],
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Padding(
                padding:  EdgeInsets.only(right: 18.0.w),
                child: SizedBox(
                  width: 133.w,
                  height: 41.h,
                  child: NavButton(label: 'Explore',radius: 5.r,)).appTouchable(() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const ExploreBenefix()));
            }),
              ),
            ],
          ),
            15.0.h.spacingH
        ],
      ),
    );
  }
}
