
import 'package:flutter/material.dart';

import '../../theme/colors.dart';

class CustomTextButton extends StatelessWidget {
  final Widget? image;
  final EdgeInsetsGeometry? padding;
  final String? label;
  final Color? color;
  final Color? labelcolor;
  final VoidCallback? function;
  const CustomTextButton({
    this.function,
    this.padding,
    this.labelcolor,
    this.color,
    this.label,
    this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        height: 48,
        width: 318,
        decoration: BoxDecoration(
            color: color ?? BenefixColors.primary,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: BenefixColors.primary,
              width: 2,
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12),
          child: Center(
            child: Text(
              label!,
              // 'Continue With  Facebook',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontFamily: 'Inter',
                  color: labelcolor ?? BenefixColors.primary,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
