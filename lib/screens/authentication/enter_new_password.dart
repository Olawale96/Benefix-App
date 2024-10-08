import 'package:benefixs/core/Sharedwidget/Reusablewidget/customTextField.dart';
import 'package:benefixs/core/Sharedwidget/Reusablewidget/customtext.dart';
import 'package:benefixs/core/function_files.dart';
import 'package:benefixs/core/theme/colors.dart';
import 'package:benefixs/core/utils/extension/widget_extensions.dart';
import 'package:benefixs/screens/authentication/signUp.dart';
import 'package:benefixs/screens/authentication/signin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnterNewPassword extends StatefulWidget {
  const EnterNewPassword({super.key});

  @override
  State<EnterNewPassword> createState() => _EnterNewPasswordState();
}

class _EnterNewPasswordState extends State<EnterNewPassword> with TickerProviderStateMixin{
  bool isVisibility = false;
  bool isConfirm = false;
    late AnimationController _controller;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _controller.forward();
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BenefixColors.primary,
      body: Padding(
        padding: EdgeInsets.only(top: 30.0.h, right: 30.w, left: 30),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.0.h.spacingH,
              slideFromTop(
                controller: _controller,
                child: Center(
                    child: Image.asset(
                  'images/benefix2.png',
                )),
              ),
              70.h.spacingH,
              CustomText(
                text: 'Forgot Password',
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                textColor: Colors.white,
              ),
              10.h.spacingH,
              CustomText(
                text: 'Enter your new password to continue',
                fontSize: 16.sp,
                fontWeight: FontWeight.w300,
                textColor: Colors.white,
              ),
              40.0.h.spacingH,
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: Colors.white),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.0.sp, vertical: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'New Password',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                        textColor: BenefixColors.textColor,
                      ),
                      ReuseableField(
                        enableColor: Colors.transparent,
                        filled: true,
                        obscuringText: isVisibility,
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                if (isVisibility == false) {
                                  isVisibility = true;
                                } else {
                                  isVisibility = false;
                                }
                              });
                            },
                            icon: isVisibility
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off)),
                        fillColor: const Color(0XFFF8F2F2),
                        hintText: 'Enter your password',
                      ),
                      16.h.spacingH,
                      CustomText(
                        text: 'Confirm New Password',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                        textColor: BenefixColors.textColor,
                      ),
                      ReuseableField(
                        enableColor: Colors.transparent,
                        filled: true,
                        obscuringText: isConfirm,
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                if (isConfirm == false) {
                                  isConfirm = true;
                                } else {
                                  isConfirm = false;
                                }
                              });
                            },
                            icon: isVisibility
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off)),
                        fillColor: const Color(0XFFF8F2F2),
                        hintText: 'Confirm your new password',
                      ),
                

                      40.h.spacingH,
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignIn()));
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
                                  'Complete',
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
                    ],
                  ),
                ),
              ),
                                    18.0.h.spacingH,
                      Center(
                        child: RichText(
                            text: TextSpan(
                                text: 'Don\'t have an account?',
                                style: TextStyle(
                                    fontFamily: 'DM Sans',
                                    color: BenefixColors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w300),
                                children: [
                              TextSpan(
                                  text: ' SignUp',
                                  style: TextStyle(
                                      fontFamily: 'DM Sans',
                                      color: BenefixColors.white,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w300),
                                      recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUp()));
                          },
                                      ),
                        
                                                                 
                            ])),
                      ),
            ],
          ),
        ),
      ),
    );
  }
}
