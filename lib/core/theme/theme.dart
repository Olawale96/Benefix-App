
import 'package:benefixs/core/theme/colors.dart';
import 'package:benefixs/core/typography/font_weights.dart';
import 'package:benefixs/core/typography/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


const _smallTextScaleFactor = 0.80;
const _largeTextScaleFactor = 1.20;

/// Namespace for the App [ThemeData].
class AppTheme {
  /// Standard `ThemeData` for App UI.
  static ThemeData get standard {
    return ThemeData(
      colorScheme: ColorScheme.fromSwatch(accentColor: BenefixColors.primary),
      appBarTheme: _appBarTheme,
      useMaterial3: true,
      elevatedButtonTheme: _elevatedButtonTheme,
      outlinedButtonTheme: _outlinedButtonTheme,
      textTheme: _textTheme,
      dialogBackgroundColor: BenefixColors.white,
      dialogTheme: _dialogTheme,
      scaffoldBackgroundColor: const Color(0xFFF9F9F9),
      tooltipTheme: _tooltipTheme,
      bottomSheetTheme: _bottomSheetTheme,
      tabBarTheme: _tabBarTheme,
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      }),
      dividerTheme: _dividerTheme,
    );
  }

  /// `ThemeData` for App UI for small screens.
  static ThemeData get small {
    return standard.copyWith(textTheme: _smallTextTheme);
  }

  /// `ThemeData` for App UI for medium screens.
  static ThemeData get medium {
    return standard.copyWith(textTheme: _smallTextTheme);
  }

  /// `ThemeData` for App UI for large screens.
  static ThemeData get large {
    return standard.copyWith(textTheme: _largeTextTheme);
  }

  static TextTheme get _textTheme {
    return TextTheme(
      displayLarge: AppTextStyle.headline1,
      displayMedium: AppTextStyle.headline2,
      displaySmall: AppTextStyle.headline3,
      headlineMedium: AppTextStyle.headline4,
      headlineSmall: AppTextStyle.headline5,
      titleLarge: AppTextStyle.headline6,
      titleMedium: AppTextStyle.subtitle1,
      titleSmall: AppTextStyle.subtitle2,
      bodyLarge: AppTextStyle.bodyText1,
      bodyMedium: AppTextStyle.bodyText2,
      bodySmall: AppTextStyle.caption,
      labelSmall: AppTextStyle.overline,
      labelLarge: AppTextStyle.button,
    );
  }

  static TextTheme get _darkTextTheme {
    return TextTheme(
      displayLarge: AppTextStyle.headline1.copyWith(color: Colors.white),
      displayMedium: AppTextStyle.headline2.copyWith(color: Colors.white),
      displaySmall: AppTextStyle.headline3.copyWith(color: Colors.white),
      headlineMedium: AppTextStyle.headline4.copyWith(color: Colors.white),
      headlineSmall: AppTextStyle.headline5.copyWith(color: Colors.white),
      titleLarge: AppTextStyle.headline6.copyWith(color: Colors.white),
      titleMedium: AppTextStyle.subtitle1.copyWith(color: Colors.white),
      titleSmall: AppTextStyle.subtitle2.copyWith(color: Colors.white),
      bodyLarge: AppTextStyle.bodyText1.copyWith(color: Colors.white),
      bodyMedium: AppTextStyle.bodyText2.copyWith(color: Colors.white),
      bodySmall: AppTextStyle.caption.copyWith(color: Colors.white),
      labelSmall: AppTextStyle.overline.copyWith(color: Colors.white),
      labelLarge: AppTextStyle.button.copyWith(color: Colors.white),
    );
  }

  static TextTheme get _smallTextTheme {
    return TextTheme(
      displayLarge: AppTextStyle.headline1.copyWith(
        fontSize: _textTheme.displayLarge!.fontSize! * _smallTextScaleFactor,
      ),
      displayMedium: AppTextStyle.headline2.copyWith(
        fontSize: _textTheme.displayMedium!.fontSize! * _smallTextScaleFactor,
      ),
      displaySmall: AppTextStyle.headline3.copyWith(
        fontSize: _textTheme.displaySmall!.fontSize! * _smallTextScaleFactor,
      ),
      headlineMedium: AppTextStyle.headline4.copyWith(
        fontSize: _textTheme.headlineMedium!.fontSize! * _smallTextScaleFactor,
      ),
      headlineSmall: AppTextStyle.headline5.copyWith(
        fontSize: _textTheme.headlineSmall!.fontSize! * _smallTextScaleFactor,
      ),
      titleLarge: AppTextStyle.headline6.copyWith(
        fontSize: _textTheme.titleLarge!.fontSize! * _smallTextScaleFactor,
      ),
      titleMedium: AppTextStyle.subtitle1.copyWith(
        fontSize: _textTheme.titleMedium!.fontSize! * _smallTextScaleFactor,
      ),
      titleSmall: AppTextStyle.subtitle2.copyWith(
        fontSize: _textTheme.titleSmall!.fontSize! * _smallTextScaleFactor,
      ),
      bodyLarge: AppTextStyle.bodyText1.copyWith(
        fontSize: _textTheme.bodyLarge!.fontSize! * _smallTextScaleFactor,
      ),
      bodyMedium: AppTextStyle.bodyText2.copyWith(
        fontSize: _textTheme.bodyMedium!.fontSize! * _smallTextScaleFactor,
      ),
      bodySmall: AppTextStyle.caption.copyWith(
        fontSize: _textTheme.bodySmall!.fontSize! * _smallTextScaleFactor,
      ),
      labelSmall: AppTextStyle.overline.copyWith(
        fontSize: _textTheme.labelSmall!.fontSize! * _smallTextScaleFactor,
      ),
      labelLarge: AppTextStyle.button.copyWith(
        fontSize: _textTheme.labelLarge!.fontSize! * _smallTextScaleFactor,
      ),
    );
  }

  static TextTheme get _largeTextTheme {
    return TextTheme(
      displayLarge: AppTextStyle.headline1.copyWith(
        fontSize: _textTheme.displayLarge!.fontSize! * _largeTextScaleFactor,
      ),
      displayMedium: AppTextStyle.headline2.copyWith(
        fontSize: _textTheme.displayMedium!.fontSize! * _largeTextScaleFactor,
      ),
      displaySmall: AppTextStyle.headline3.copyWith(
        fontSize: _textTheme.displaySmall!.fontSize! * _largeTextScaleFactor,
      ),
      headlineMedium: AppTextStyle.headline4.copyWith(
        fontSize: _textTheme.headlineMedium!.fontSize! * _largeTextScaleFactor,
      ),
      headlineSmall: AppTextStyle.headline5.copyWith(
        fontSize: _textTheme.headlineSmall!.fontSize! * _largeTextScaleFactor,
      ),
      titleLarge: AppTextStyle.headline6.copyWith(
        fontSize: _textTheme.titleLarge!.fontSize! * _largeTextScaleFactor,
      ),
      titleMedium: AppTextStyle.subtitle1.copyWith(
        fontSize: _textTheme.titleMedium!.fontSize! * _largeTextScaleFactor,
      ),
      titleSmall: AppTextStyle.subtitle2.copyWith(
        fontSize: _textTheme.titleSmall!.fontSize! * _largeTextScaleFactor,
      ),
      bodyLarge: AppTextStyle.bodyText1.copyWith(
        fontSize: _textTheme.bodyLarge!.fontSize! * _largeTextScaleFactor,
      ),
      bodyMedium: AppTextStyle.bodyText2.copyWith(
        fontSize: _textTheme.bodyMedium!.fontSize! * _largeTextScaleFactor,
      ),
      bodySmall: AppTextStyle.caption.copyWith(
        fontSize: _textTheme.bodySmall!.fontSize! * _largeTextScaleFactor,
      ),
      labelSmall: AppTextStyle.overline.copyWith(
        fontSize: _textTheme.labelSmall!.fontSize! * _largeTextScaleFactor,
      ),
      labelLarge: AppTextStyle.button.copyWith(
        fontSize: _textTheme.labelLarge!.fontSize! * _largeTextScaleFactor,
      ),
    );
  }

  static AppBarTheme get _appBarTheme {
    return AppBarTheme(
      color: Colors.white,
      elevation: 1.1,
      shadowColor: Colors.white,
      surfaceTintColor: Colors.white,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light, // For Android (dark icons)
        statusBarBrightness: Brightness.light, // For iOS (dark icons)
      ),
      centerTitle: true,
      titleTextStyle:
          AppTextStyle.headline6.copyWith(fontWeight: AppFontWeight.medium),
      iconTheme: const IconThemeData(
        color: Colors.black, //change your color here
      ),
    );
  }

  static AppBarTheme get _darkModeAppBarTheme {
    return AppBarTheme(
      backgroundColor: Color(0XFF2F2F2F),
      // color: BenefixColors.black25,
      elevation: 2,
      shadowColor: Colors.white,
      surfaceTintColor: BenefixColors.black25,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.dark, // For iOS (dark icons)
      ),
      centerTitle: true,
      titleTextStyle:
          AppTextStyle.headline6.copyWith(fontWeight: AppFontWeight.medium),
      iconTheme: const IconThemeData(
        color: Colors.black, //change your color here
      ),
    );
  }

  static ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.black,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
          ),
          fixedSize: const Size(double.maxFinite, 45),
          foregroundColor: Colors.white),
    );
  }

  static OutlinedButtonThemeData get _outlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(7)),
          ),
          side: const BorderSide(color: BenefixColors.primary, width: 2),
          foregroundColor: BenefixColors.white,
          fixedSize: const Size(double.maxFinite, 45)),
    );
  }

  static TooltipThemeData get _tooltipTheme {
    return const TooltipThemeData(
      decoration: BoxDecoration(
        color: BenefixColors.charcoal,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      padding: EdgeInsets.all(10),
      textStyle: TextStyle(color: BenefixColors.white),
    );
  }

  static DialogTheme get _dialogTheme {
    return DialogTheme(
      // surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  static BottomSheetThemeData get _bottomSheetTheme {
    return const BottomSheetThemeData(
      // surfaceTintColor: Colors.white,
      backgroundColor: BenefixColors.backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
    );
  }

  static TabBarTheme get _tabBarTheme {
    return const TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 2,
          color: BenefixColors.primary,
        ),
      ),
      labelColor: BenefixColors.primary,
      unselectedLabelColor: BenefixColors.black25,
      indicatorSize: TabBarIndicatorSize.tab,
    );
  }

  static DividerThemeData get _dividerTheme {
    return const DividerThemeData(
      space: 0,
      thickness: 1,
      color: BenefixColors.gray,
    );
  }

  static final lightTheme = ThemeData(
    // appBarTheme: _appBarTheme,
      brightness: Brightness.light,
      primaryColor: Colors.white,
      primaryColorDark: Colors.black,
      dividerColor: BenefixColors.gray,
      textTheme: _textTheme,
      focusColor: Colors.white,
      colorScheme: ColorScheme.light(
          //       brightness: Brightness.light,
          // primary: BenefixColors.primary,

          ));

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor:Color(0XFF2F2F2F) ,
      appBarTheme: _darkModeAppBarTheme,
      brightness: Brightness.dark,
      primaryColor: Color(0XFF2F2F2F),
      focusColor: Color(0xFF393838),
      primaryColorDark: Colors.white,
      dividerColor:BenefixColors.dividerColor ,
      textTheme: _darkTextTheme);
}
