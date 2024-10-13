import 'package:benefixs/core/Sharedwidget/Reusablewidget/customTextField.dart';
import 'package:benefixs/core/Sharedwidget/Reusablewidget/customtext.dart';
import 'package:benefixs/core/extension/extension.dart';
import 'package:benefixs/core/function_files.dart';
import 'package:benefixs/core/theme/colors.dart';
import 'package:benefixs/core/utils/extension/widget_extensions.dart';
import 'package:benefixs/model/auth/body/login_param.dart';
import 'package:benefixs/provider/general.dart';
import 'package:benefixs/provider/state_notifier_provider.dart';
import 'package:benefixs/screens/authentication/forgot_password.dart';
import 'package:benefixs/screens/authentication/join_with_social.dart';
import 'package:benefixs/screens/authentication/signUp.dart';
import 'package:benefixs/screens/homepage.dart';
import 'package:benefixs/state/auth_state.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends ConsumerStatefulWidget {
  const SignIn({super.key});

  @override
  ConsumerState<SignIn> createState() => _SignInState();
}

class _SignInState extends ConsumerState<SignIn> with TickerProviderStateMixin {
  bool isVisibility = false;
  late AnimationController _controller;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _controller.forward();
    });

    super.initState();
  }

  void login() async {
    final registerParam = LoginParam(
      email: emailController.text,
      password: passwordController.text,
    );
    ref.watch(logInNotifierProvider.notifier).logIn(registerParam, ref);
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final isLoginState = ref.watch(logInNotifierProvider);
     final isError302 = ref.watch(error302Provider);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (isLoginState is LoginSuccessState) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(isLoginState.successData!.message ?? ''),
            backgroundColor: Colors.green,
            duration: const Duration(seconds: 2),
          ),
        );
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const JoinWithSocialMedia()));
        ref.watch(logInNotifierProvider.notifier).resetState();
        ref.watch(error302Provider.notifier).state=false;
      } else if (isLoginState is LoginFailureState) {
        if (isError302 == false) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(isLoginState.failure.message),
              backgroundColor: Colors.red,
              duration: const Duration(seconds: 2),
            ),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Check your credentials"),
              backgroundColor: Colors.red,
              duration: Duration(seconds: 2),
            ),
          );
        }


        ref.read(error302Provider.notifier).state = false;
         ref.watch(logInNotifierProvider.notifier).resetState();
      }
    });
    return Scaffold(
      backgroundColor: BenefixColors.primary,
      body: Padding(
        padding: EdgeInsets.only(top: 30.0.h, right: 30.w, left: 30),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Form(
            key: _formKey,
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
                  text: 'Welcome !',
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                  textColor: Colors.white,
                ),
                10.h.spacingH,
                CustomText(
                  text: 'Login to your account to continue',
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
                          controller: emailController,
                          suffixIcon: const Icon(Icons.email),
                          fillColor: const Color(0XFFF8F2F2),
                          hintText: 'Enter your email',
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
                        16.h.spacingH,
                        CustomText(
                          text: 'Password',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                          textColor: BenefixColors.textColor,
                        ),
                        6.0.h.spacingH,
                        ReuseableField(
                          enableColor: Colors.transparent,
                          filled: true,
                          obscuringText: isVisibility,
                          controller: passwordController,
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
                              return 'Please enter a password';
                            }

                            if (value.length < 8) {
                              return 'Password must be at least 8 characters long';
                            }

                            return null;
                          },
                        ),
                        12.0.h.spacingH,
                        Align(
                          alignment: Alignment.centerRight,
                          child: CustomText(
                            text: 'Forgot Password',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            textColor: BenefixColors.red,
                          ).appTouchable(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgotPassword()));
                          }),
                        ),
                        40.h.spacingH,
                        if (isLoginState is   LoginLoadingState)
                          const Center(
                            child: CircularProgressIndicator(
                              color: BenefixColors.black,
                            ),
                          )
                        else
                          const NavButton(
                            label: 'SignIn',
                          ).appTouchable(() {
                            if (_formKey.currentState!.validate()) {
                              login();
                            }
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const JoinWithSocialMedia()));
                          })
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
                              fontWeight: FontWeight.w600),
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

class NavButton extends StatelessWidget {
  final String label;
  final Color? buttonColor;
  final Color? borderColor;
  final Color? labelColor;
  final double? height;
  final double? radius;
  final double? fontSize;

  const NavButton({
    required this.label,
    this.borderColor,
    this.height,
    this.labelColor,
    this.fontSize,
    this.radius,
    this.buttonColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 40.h,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor ?? BenefixColors.transparent),
          color: buttonColor ?? BenefixColors.primary,
          borderRadius: BorderRadius.circular(radius ?? 12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: fontSize ?? 16.sp,
                fontWeight: FontWeight.w700,
                color: labelColor ?? BenefixColors.white),
          ),
        ],
      ),
    );
  }
}
