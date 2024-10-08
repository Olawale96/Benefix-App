import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomText extends StatelessWidget {
  final TextStyle? style;
  final String? text;
  final TextAlign? textAlign;
  final double? fontSize;
  final  FontWeight? fontWeight;
  final Color?  textColor;
  const CustomText({
    this.textAlign,
    this.fontWeight,
    this.textColor,
    this.fontSize,
    this.text,
    this.style,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign ?? TextAlign.start,
      text!,
      style: TextStyle(
        fontSize: fontSize?? 15.sp,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: textColor?? Colors.black ,
        fontFamily: 'DM Sans'
      ),
    );
  }
}
