import 'package:benefixs/core/Sharedwidget/Reusablewidget/customTextField.dart';
import 'package:benefixs/core/Sharedwidget/Reusablewidget/customtext.dart';
import 'package:benefixs/core/local_db.dart';
import 'package:benefixs/core/theme/colors.dart';
import 'package:benefixs/core/utils/extension/widget_extensions.dart';
import 'package:benefixs/model/auth/body/forgotpassword_param.dart';
import 'package:benefixs/provider/state_notifier_provider.dart';
import 'package:benefixs/screens/authentication/enter_new_password.dart';
import 'package:benefixs/state/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPassword extends ConsumerStatefulWidget {
  const ForgotPassword({super.key});

  @override
  ConsumerState<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends ConsumerState<ForgotPassword> {
  bool isVisibility = false;
  final formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  void forgotPassword() {
    final forgotPasswordParam =
        ForgotPasswordParam(email: emailController.text);
    ref
        .watch(forgotPasswordNotifierProvider.notifier)
        .forgotPassword(forgotPasswordParam, ref);
  }

  @override
  Widget build(BuildContext context) {
    final isForgotState = ref.watch(forgotPasswordNotifierProvider);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (isForgotState is ForgotPasswordSuccessState) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(isForgotState.successData!.message ?? ''),
            backgroundColor: Colors.green,
            duration: const Duration(seconds: 2),
          ),
        );
        LocalDB.saveEmail(emailController.text);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const EnterNewPassword()));
        ref.watch(forgotPasswordNotifierProvider.notifier).resetState();
      } else if (isForgotState is ForgotPasswordFailureState) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(isForgotState.failure.message),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 2),
          ),
        );
        ref.watch(forgotPasswordNotifierProvider.notifier).resetState();
      }
    });
    return Scaffold(
      backgroundColor: BenefixColors.primary,
      body: Padding(
        padding: EdgeInsets.only(top: 30.0.h, right: 30.w, left: 30),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Form(
            key: formkey,
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
                        ReuseableField(
                          enableColor: Colors.transparent,
                          filled: true,
                          suffixIcon: const Icon(Icons.email),
                          fillColor: const Color(0XFFF8F2F2),
                          hintText: 'Enter your email',
                          controller: emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter an email';
                            }

                            if (!RegExp(r'^[a-zA-Z0-9._%+-]+@gmail\.com$')
                                .hasMatch(value)) {
                              return 'Please enter a valid Gmail address';
                            }

                            return null;
                          },
                        ),
                        40.h.spacingH,
                        if (isForgotState is ForgotPasswordLoadingState)
                          const Center(
                            child: CircularProgressIndicator(
                              color: BenefixColors.primary,
                            ),
                          )
                        else
                          InkWell(
                              onTap: () {
                                if (formkey.currentState!.validate()) {
                                  forgotPassword();
                                }
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
      ),
    );
  }
}
