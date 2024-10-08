
import 'package:benefixs/core/Sharedwidget/Reusablewidget/customtext.dart';
import 'package:benefixs/core/theme/colors.dart';
import 'package:benefixs/core/utils/extension/widget_extensions.dart';
import 'package:benefixs/screens/authentication/signUp.dart';
import 'package:benefixs/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Content {
  final String? title;
  final String? image;
  final String? footer;
  Content({required this.image, required this.footer, required this.title});
}

class Onboarding extends StatefulWidget {
  const Onboarding({
    super.key,
  });

  @override
  State<Onboarding> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Onboarding> {
  int _index = 0;

  int get index => _index;
  PageController? _controller;

  PageController controller() {
    _controller = PageController(initialPage: _index);
    return _controller!;
  }

  void onChanged(int index) {
    setState(() {
      _index = index;
    });
  }

  void nextPage() {
    _controller!.nextPage(
        duration: const Duration(milliseconds: 1200), curve: Curves.ease);
  }

  void navigatePage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SignUp()));
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  List<Content> content = [
    Content(
        image: 'images/ben1.png',
        footer: 'Start simple, Start now.',
        title: 'Maximize Your\nDigital Potential'),
    Content(
        image: 'images/ben2.png',
        footer: 'Unlock a gem box full of surprises and claim your prize',
        title: 'Boost Your Earnings With\nThe Benefix Ultra Box'),
    Content(
        image: 'images/ben3.png',
        footer: 'Where selling is simple',
        title: ' Benefix Market Hub'),
  ];

  @override
  Widget build(BuildContext context) {
    var deviceHeight= MediaQuery.of(context).size.height;
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      
      child: Scaffold(
        backgroundColor: BenefixColors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: PageView.builder(
                  itemCount: content.length,
                  controller: controller(),
                  onPageChanged: (index) => onChanged(index),
                  itemBuilder: (context, index) {
                    return OnboardingWidget(
                      image: content[index].image,
                      title: content[index].title,
                      footer: content[index].footer,
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.all(18.0.h),
              child: index == 2
                  ? InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      child: Container(
                        height: 40.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: BenefixColors.primary,
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Get Started',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700,
                                      color: BenefixColors.white),
                            ),
                          ],
                        ),
                      ))
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()));
                            },
                            child: Container(
                              height: 40.h,
                              width: 85,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: BenefixColors.primary,
                                  ),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Skip',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                            color: BenefixColors.primary),
                                  ),
                                ],
                              ),
                            )),
                        InkWell(
                            onTap: nextPage,
                            child: Container(
                              height: 50.h,
                              width: 85,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  color: BenefixColors.primary,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Next',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
            ),
           deviceHeight>760? 80.h.spacingH :  35.h.spacingH
          ],
        ),
      ),
    );
  }
}

class OnboardingWidget extends StatelessWidget {
  final String? image;
  final String? title;
  final String? footer;
  // final Function()? onTap;
  const OnboardingWidget({
    this.image,
    required this.footer,
    required this.title,
    // this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          width: MediaQuery.of(context).size.width,
          image!,
          fit: BoxFit.fitWidth,
        ),
        20.0.h.spacingH,
        CustomText(
          text: title,
          fontSize: 24,
          fontWeight: FontWeight.w500,
          textColor: BenefixColors.primary,
          textAlign: TextAlign.center,
        ),
        15.0.h.spacingH,
        CustomText(
          text: footer,
          fontSize: 12.sp,
          fontWeight: FontWeight.w300,
          textColor: BenefixColors.textColor,
        ),
        60.0.h.spacingH,
      ],
    );
  }
}
