import 'package:benefixs/core/Sharedwidget/Reusablewidget/customTextField.dart';
import 'package:benefixs/core/Sharedwidget/Reusablewidget/customtext.dart';
import 'package:benefixs/core/extension/extension.dart';
import 'package:benefixs/core/function_files.dart';
import 'package:benefixs/core/theme/colors.dart';
import 'package:benefixs/core/utils/extension/widget_extensions.dart';
import 'package:benefixs/model/auth/body/register_param.dart';
import 'package:benefixs/provider/state_notifier_provider.dart';
import 'package:benefixs/screens/authentication/join_with_social.dart';
import 'package:benefixs/screens/authentication/signin.dart';
import 'package:benefixs/state/auth_state.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends ConsumerStatefulWidget {
  const SignUp({super.key});

  @override
  ConsumerState<SignUp> createState() => _SignUpState();
}

class _SignUpState extends ConsumerState<SignUp> with TickerProviderStateMixin {
  bool isVisibility = false;
  late AnimationController _controller;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void register() async {
    final registerParam = RegisterParam(
        username: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        passwordConfirmation: passwordController.text);
   ref.watch(registerNotifierProvider.notifier).register(registerParam);
  }

  final _formKey = GlobalKey<FormState>();
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
    final isRegisterState = ref.watch(registerNotifierProvider);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (isRegisterState is RegistersSuccessState) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(isRegisterState.successData!.message ??
                'Registration successful!'), 

            backgroundColor: Colors.green,
            duration: const Duration(seconds: 2),
          ),
        );
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignIn()));
        ref.watch(registerNotifierProvider.notifier).resetState();
      } else if (isRegisterState is RegistersFailureState) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(isRegisterState.failure.message),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 2),
          ),
        );
        ref.read(registerNotifierProvider.notifier).resetState();
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
                50.h.spacingH,
                CustomText(
                  text: 'Welcome !',
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                  textColor: Colors.white,
                ),
                10.h.spacingH,
                CustomText(
                  text: 'Create account to get started',
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
                          text: 'Username',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w300,
                          textColor: BenefixColors.textColor,
                        ),
                        6.0.h.spacingH,
                        ReuseableField(
                          enableColor: Colors.transparent,
                          filled: true,
                          fillColor: const Color(0XFFF8F2F2),
                          hintText: 'Your name',
                          controller: nameController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a usernamme';
                            }
                            return null;
                          },
                        ),
                        16.h.spacingH,
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
                              return 'Please enter a email';
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
                          controller: passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a password';
                            }
                            return null;
                          },
                        ),
                        18.0.h.spacingH,
                        RichText(
                            text: TextSpan(
                                text: 'By clicking Sign Up, you agree to our',
                                style: TextStyle(
                                    fontFamily: 'DM Sans',
                                    color: BenefixColors.textColor,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w300),
                                children: [
                              TextSpan(
                                  text: ' Terms and Conditions',
                                  style: TextStyle(
                                      fontFamily: 'DM Sans',
                                      color: BenefixColors.red,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w300)),
                              TextSpan(
                                  text: ' and that you have read our',
                                  style: TextStyle(
                                      fontFamily: 'DM Sans',
                                      color: BenefixColors.textColor,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w300)),
                              TextSpan(
                                  text: ' Privacy policy',
                                  style: TextStyle(
                                      fontFamily: 'DM Sans',
                                      color: BenefixColors.red,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w300)),
                            ])).appTouchable(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignIn()));
                        }),
                        40.h.spacingH,
                        if (isRegisterState is RegistersLoadingState)
                          const Center(
                            child: CircularProgressIndicator(
                              color: BenefixColors.primary,
                            ),
                          )
                        else
                          InkWell(
                              onTap: () {
                                if (_formKey.currentState!.validate()) {
                                  // register();
                                                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignIn()));
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
                                      'SIGN UP',
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
                20.0.h.spacingH,
                Center(
                  child: RichText(
                      text: TextSpan(
                          text: 'Have an account?',
                          style: TextStyle(
                              fontFamily: 'DM Sans',
                              color: BenefixColors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600),
                          children: [
                        TextSpan(
                          text: ' LogIn',
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
                                      builder: (context) => const SignIn()));
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
