import 'package:benefixs/core/Sharedwidget/Reusablewidget/customTextField.dart';
import 'package:benefixs/core/Sharedwidget/Reusablewidget/customtext.dart';
import 'package:benefixs/core/function_files.dart';
import 'package:benefixs/core/theme/colors.dart';
import 'package:benefixs/core/utils/extension/widget_extensions.dart';
import 'package:benefixs/model/auth/body/enter_new_password_param.dart';
import 'package:benefixs/provider/state_notifier_provider.dart';
import 'package:benefixs/screens/authentication/signUp.dart';
import 'package:benefixs/screens/authentication/signin.dart';
import 'package:benefixs/state/auth_state.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnterNewPassword extends ConsumerStatefulWidget {
  const EnterNewPassword({super.key});

  @override
  ConsumerState<EnterNewPassword> createState() => _EnterNewPasswordState();
}

class _EnterNewPasswordState extends ConsumerState<EnterNewPassword>
    with TickerProviderStateMixin {
  bool isVisibility = false;
  bool isConfirm = false;
  final formkey = GlobalKey<FormState>();
  late AnimationController _controller;
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  void enterNewPassword() {
    final param = EnterNewPasswordParam(
        newpassword: newPasswordController.text,
        confirmpassword: confirmPasswordController.text);
    ref.watch(newPasswordNotifierProvider.notifier).newPassword(param, ref);
  }

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
    final isnewPasswordState = ref.watch(newPasswordNotifierProvider);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (isnewPasswordState is NewPasswordSuccessState) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(isnewPasswordState.successData!.message ?? ''),
            backgroundColor: Colors.green,
            duration: const Duration(seconds: 2),
          ),
        );

        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const SignIn()));
        ref.watch(newPasswordNotifierProvider.notifier).resetState();
      } else if (isnewPasswordState is NewPasswordFailureState) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(isnewPasswordState.failure.message),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 2),
          ),
        );
        ref.watch(newPasswordNotifierProvider.notifier).resetState();
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
                          controller: newPasswordController,
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
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your new password';
                            }
                            if (value.length < 8) {
                              return 'Password must be at least 8 characters';
                            }
                            return null;
                          },
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
                          controller: confirmPasswordController,
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
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please confirm your new password';
                            }
                            if (value.length < 8) {
                              return 'Password must be at least 8 characters';
                            }
                            if (value != newPasswordController.text) {
                              return 'Passwords do not match';
                            }
                            return null;
                          },
                        ),
                        40.h.spacingH,
                        if (isnewPasswordState is NewPasswordLoadingState)
                          const Center(
                            child: CircularProgressIndicator(
                              color: BenefixColors.primary,
                            ),
                          )
                        else
                          InkWell(
                              onTap: () {
                                if (formkey.currentState!.validate()) {
                                  enterNewPassword();
                                }
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => const SignIn()));
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
      ),
    );
  }
}
