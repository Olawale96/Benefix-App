import 'package:benefixs/core/Sharedwidget/Reusablewidget/customTextField.dart';
import 'package:benefixs/core/Sharedwidget/Reusablewidget/customtext.dart';
import 'package:benefixs/core/theme/colors.dart';
import 'package:benefixs/core/utils/extension/widget_extensions.dart';
import 'package:benefixs/screens/authentication/enter_new_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool isVisibility = false;
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
              Center(
                  child: Image.asset(
                'images/benefix2.png',
              )),
              70.h.spacingH,
              CustomText(
                text: 'Forgot Password',
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                textColor: Colors.white,
              ),
              10.h.spacingH,
              CustomText(
                text: 'Please enter your email address',
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
                        text: 'Email',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                        textColor: BenefixColors.textColor,
                      ),
                      6.0.h.spacingH,
                      const ReuseableField(
                        enableColor: Colors.transparent,
                        filled: true,
                        suffixIcon: Icon(Icons.email),
                        fillColor: Color(0XFFF8F2F2),
                        hintText: 'Enter your email',
                      ),
                      40.h.spacingH,
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const EnterNewPassword()));
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
                                  'Continue',
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
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600),
                        children: [
                      TextSpan(
                          text: ' SignUp',
                          style: TextStyle(
                              fontFamily: 'DM Sans',
                              color: BenefixColors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600)),
                    ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
