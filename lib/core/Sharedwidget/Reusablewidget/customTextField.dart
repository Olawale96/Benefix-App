// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../theme/colors.dart';

class ReuseableField extends StatelessWidget {
  final String? Function(String?)? validator;
  final hintText;
  final onChanged;
  final Color? enableColor;

  final labelStyle;
  final bool? obscuringText;
  final EdgeInsets? contentpadding;
  final obscuringCharacter;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final controller;
  final labelText;
  final cursorColor;
  final int? maxLines;
  final int maxLength;
  final Color? fillColor;
  final textAlign;
  final textInputType;
  final color;
  final focusColor;
  final radius;
  final focusNode;
  final void Function()? onTap;
  final InputBorder? focusBorder;
  final InputBorder? enableBorder;
  final TextInputType? keyBoardType;
  final hintstyle;
  final style;
  final double? width;
  final height;
  final bool? filled;
  final bool? autoFocus;
  const ReuseableField({
    this.radius,
    this.autoFocus,
    this.enableColor,
    this.filled,
    this.cursorColor,
    this.keyBoardType,
    this.style,
    this.focusBorder,
    this.focusNode,
    this.validator,
    this.focusColor,
    this.labelStyle,
    this.hintstyle,
    this.onTap,
    this.enableBorder,
    this.fillColor,
    this.onChanged,
    this.height,
    this.obscuringText,
    this.color,
    this.suffixIcon,
    this.contentpadding,
    this.controller,
    this.hintText,
    this.labelText,
    this.maxLines,
    this.maxLength = -1,
    this.obscuringCharacter,
    this.prefixIcon,
    this.textAlign,
    this.textInputType,
    this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final _themeService = locator<ThemeService>();

    return SizedBox(
      width: width,
      height: 48.h,
      child: TextFormField(
        style: style ?? Theme.of(context).textTheme.bodyLarge!,
        cursorColor: cursorColor ?? BenefixColors.primary,
        focusNode: focusNode,
        onTap: onTap,
        onChanged: onChanged,
        obscureText: obscuringText ?? false,
        textAlign: textAlign ?? TextAlign.start,
        validator: validator,
        keyboardType: keyBoardType ?? TextInputType.text,
        controller: controller,
        maxLines: maxLines ?? 1,
        // maxLength: maxLength,
        decoration: InputDecoration(
            filled: filled ?? false,
            label: labelText,
            labelStyle: labelStyle,
            focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: radius ?? BorderRadius.circular(8)),
            contentPadding: const EdgeInsets.only(top: 20, left: 10),
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle: hintstyle ??
                Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: BenefixColors.secondary),
            prefixIcon: prefixIcon,
            prefixIconColor: color ?? BenefixColors.secondary,
            suffixIconColor: color ?? BenefixColors.secondary,
            fillColor: fillColor ?? null,
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.red)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: focusColor ?? BenefixColors.secondary,
                )),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color:enableColor?? BenefixColors.secondary,
                ))),
      ),
    );
  }
}
