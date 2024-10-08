import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../../typography/text_styles.dart';

class LoadButton extends StatelessWidget {
  final VoidCallback function;
  final String label;
  final double? width;
  final Color? color;
  final double? height;
  LoadButton(
      {required this.label,
      super.key,
      required this.function,
      this.width,
      this.height,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:height?? 52,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
          color: color ?? BenefixColors.primary,
          borderRadius: BorderRadius.circular(8)),
      child: TextButton(
        onPressed: function,
        child: Text(
          label,
          style: AppTextStyle.button,
        ),
      ),
    );
  }
}
