// // ignore_for_file: use_build_context_synchronously

// import 'dart:developer';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:task_colony/core/runner/service.dart';
// import 'package:task_colony/models/profile/body/get_user_notification_history.dart';
// import 'package:task_colony/models/profile/body/get_user_trans_history.dart';
// import 'package:task_colony/provider/state_notifier/profile_state_notifier.dart';
// import 'package:task_colony/provider/state_notifier/system_state_notifier.dart';
// import 'package:task_colony/state/profile/profile_state.dart';

// class AllApiCalls {
//   static int apiCalled = 0;
//   static int numberOfCalls = 0;
//   static resetData() {
//     apiCalled = 0;
//     numberOfCalls = 0;
//   }

//   static makeAllApiCalls(WidgetRef ref, BuildContext context) async {
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       ServiceRunner.loggedout = 0;
//       // call all get api here
//       if (apiCalled == 0) {
//         resetAllState(ref);
//         apiCalled = 1;
//       }
//       apiCalled = 1;
//       log("TOTAL API CALL= ${numberOfCalls.toString()}");
//     });
//   }

//   static resetAllState(WidgetRef ref) {}

//   static callAllUserData(WidgetRef ref, BuildContext context) async {
//     ref.read(getProfileDataNotifierProvider.notifier).getProfileData();

//     numberOfCalls += 1;
//   }

//   static callSystemData(WidgetRef ref, BuildContext context) async {
//     ref.read(systemDataNotifierProvider.notifier).getSystemData();
//     numberOfCalls += 1;
//   }

//   static callAllUserNotifications(WidgetRef ref, BuildContext context) {
//     final userDataState = ref.watch(getUserNotificationHistoryNotifierProvider);
//     if (userDataState is! GetUserNotificationHistorySuccessState) {
//       ref
//           .read(getUserNotificationHistoryNotifierProvider.notifier)
//           .getUserNotificationHistory(
//               GetUserNotificationHistoryParams(perPage: '150'));
//       numberOfCalls += 1;
//     }
//   }
// }
