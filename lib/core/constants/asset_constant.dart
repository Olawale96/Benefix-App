// import 'package:flutter/material.dart';


// import 'custom_alert_dialog.dart';

// class AssetConstants {
//   AssetConstants._();

//   static const String otpIllustration = 'otp_illustration';
//   static const String topClip = 'top_clip';
//   static const String homeIcon = 'ic_home';
//   static const String chatIcon = 'ic_chat';
//   static const String personIcon = 'ic_person';
//   static const String heartIcon = 'ic_heart';
//   static const String addRoundIcon = 'ic_add_round';
//   static const String profileIcon = 'ic_profile';
//   static const String eventIcon = 'ic_event';
//   static const String coupleIcon = 'ic_couple';
//   static const String islamicIcon = 'ic_islamic';
//   static const String videocameraIcon = 'ic_video-camera';
//   static const String propertyIcon = 'ic_property';
//   static const String briefcaseIcon = 'ic_briefcase';
//   static const String callIcon = 'ic_call';
//   static const String chat2Icon = 'ic_chat2';
// }

// showCommonError(message) {
//   CustomAlertDialogloader(
//       // context: Get.context,
//       title: "Whoops!!",
//       message: message,
//       negativeBtnText: 'Dismiss',
//       onPostivePressed: () {},
//       onNegativePressed: () {});
// }

// showCommonSuccess(message) {
//   CustomAlertDialogloader(
//       // context: Get.context,
//       title: "Hurray!!!",
//       message: message,
//       negativeBtnText: 'Dismiss',
//       onPostivePressed: () {},
//       onNegativePressed: () {});
// }

// String amount2fund = "0";
// String globalEmail = "";
// String globalName = "";
// int? globalDuration;
// String globalCurrency = "";
// String globalAmount = '0';
// String globalInvestPayType = "";
// String globalInvestPercent = "0";
// String globalInvestId = "";
// String globalReason = "";
// String globalPaymentId = "";
// String globalTawktoURL =
//     "https://tawk.to/chat/66367d5607f59932ab3c0f9d/1ht2dj6sk";
//     // String globalNotificationLenght = "";

// var jollofLoader =
//     const Center(child: CircularProgressIndicator(color: JollofColors.black25));

// String calculateProfi(amount, interest) {
//   return ((double.parse(interest) / 100) * int.parse(amount))
//       .toStringAsFixed(1);
// }

// String calculateTotalCashout(amount, interest) {
//   return (((double.parse(interest) / 100) * int.parse(amount)) +
//           double.parse(amount))
//       .toStringAsFixed(1);
// }

// final sammy = NumberFormat("#,##0.00", "en_US");

// void navigateToTawkTo() async {
//   var url = Uri.parse(globalTawktoURL);
//   await launchUrl(url, mode: LaunchMode.inAppWebView);
// }
