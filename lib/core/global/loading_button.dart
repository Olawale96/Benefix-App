
import 'package:benefixs/core/theme/colors.dart';
import 'package:benefixs/core/typography/font_weights.dart';
import 'package:flutter/material.dart';


import '../typography/text_styles.dart';

class LoadingButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onPressed;
  final Color? color;
  final FontWeight? fontWeight;
  final Gradient? gradient;
  const LoadingButton({
    super.key,
    required this.buttonText,
    this.fontWeight,
    this.color,
    this.gradient,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: BenefixColors.primary,

        // gradient: const LinearGradient(
        //     colors: [Color(0xFFFF5858), Color(0xFFF69515)])
      ),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: BenefixColors.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          child: Text(
            buttonText,
            style: AppTextStyle.button.copyWith(
                fontWeight: fontWeight ?? AppFontWeight.bold,
                color: BenefixColors.white),
          )),
    );
  }
}
