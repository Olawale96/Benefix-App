
import 'package:benefixs/core/theme/colors.dart';
import 'package:benefixs/core/typography/font_weights.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


/// App Text Style Definitions
class AppTextStyle {
  static const _baseTextStyle = TextStyle(
    fontFamily: 'Inter',
    color: BenefixColors.black,
    fontWeight: AppFontWeight.regular,
  );

  /// Headline 1 Text Style
  static TextStyle get headline1 {
    return _baseTextStyle.copyWith(
      fontSize: 30 - 2,
      fontWeight: AppFontWeight.bold,
    );
  }

  /// Headline 2 Text Style
  static TextStyle get headline2 {
    return _baseTextStyle.copyWith(
      fontSize: 28 - 2,
      fontWeight: AppFontWeight.regular,
    );
  }

  /// Headline 3 Text Style
  static TextStyle get headline3 {
    return _baseTextStyle.copyWith(
      fontSize: 26 - 2,
      fontWeight: AppFontWeight.regular,
    );
  }

  /// Headline 4 Text Style
  static TextStyle get headline4 {
    return _baseTextStyle.copyWith(
      fontSize: 24,
      fontWeight: AppFontWeight.bold,
    );
  }

  /// Headline 5 Text Style
  static TextStyle get headline5 {
    return _baseTextStyle.copyWith(
      fontSize: 20,
      fontWeight: AppFontWeight.semiBold,
    );
  }

  /// Headline 6 Text Style
  static TextStyle get headline6 {
    return _baseTextStyle.copyWith(
      fontSize: 18,
      fontWeight: AppFontWeight.bold,
    );
  }

  /// Subtitle 1 Text Style
  static TextStyle get subtitle1 {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      //letterSpacing: 0.3,
      fontWeight: AppFontWeight.bold,
    );
  }

  /// Subtitle 2 Text Style
  static TextStyle get subtitle2 {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      color: BenefixColors.appDark,
      fontWeight: AppFontWeight.bold,
    );
  }

  /// Body Text 1 Text Style
  static TextStyle get bodyText1 {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: AppFontWeight.medium,
    );
  }

  /// Body Text 2 Text Style (the default)
  static TextStyle get bodyText2 {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );
  }

  /// Body Text 2 Text Style (the default)
  static TextStyle get bodyText3 {
    return _baseTextStyle.copyWith(
      fontSize: 11.5,
      fontWeight: AppFontWeight.regular,
    );
  }

  /// Caption Text Style
  static TextStyle get caption {
    return _baseTextStyle.copyWith(
      fontSize: 14.5,
      fontWeight: AppFontWeight.regular,
    );
  }

  /// Overline Text Style
  static TextStyle get overline {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: AppFontWeight.regular,
    );
  }

  /// Button Text Style
  static TextStyle get button {
    return _baseTextStyle.copyWith(
      fontSize: 20,
      color: BenefixColors.white,
      fontWeight: AppFontWeight.medium,
    );
  }

  /// Button Text Style
  static TextStyle get button2 {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      color: BenefixColors.white,
      fontWeight: AppFontWeight.medium,
    );
  }

  /// Button Text Style
  static TextStyle get appBarTitle {
    return _baseTextStyle.copyWith(
      fontSize: 20,
      color: BenefixColors.appDark,
      fontWeight: AppFontWeight.medium,
    );
  }

  /// Button Text Style
  static TextStyle get caption2 {
    return _baseTextStyle.copyWith(
      fontSize: 12.5,
      color: BenefixColors.white,
      fontWeight: AppFontWeight.medium,
    );
  }

  static TextStyle get mediumTxt {
    return _baseTextStyle.copyWith(
      fontSize: 12,
      color: BenefixColors.appDark,
      fontWeight: AppFontWeight.medium,
    );
  }
}



// ..............................mainText..........


class MainAppTextClass {
  // Grey /////////////
  static const version = "V 1.0";
  static const noRetry = 0;
  static const smallRetry = 2;
  static const mediumRetry = 4;
  static const highRetry = 8;
}

