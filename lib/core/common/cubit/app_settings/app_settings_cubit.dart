// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:jokes_app/core/di/di_container.dart';
// import 'package:jokes_app/core/utils/shared_prefer_service.dart';

// part 'app_settings_state.dart';

// class AppSettingsCubit extends Cubit<AppSettingsState> {
//   AppSettingsCubit()
//       : super(
//           AppCurrentSettingsState(
//             curLocale: getIt.get<SharedPreferService>().getLocale() ?? _locale,
//             isNotificationEnabled: true, // check with locale storage or network
//           ),
//         );

//   static Locale get _locale {
//     Locale locale = PlatformDispatcher.instance.locale;
//     return switch (locale.languageCode.toLowerCase()) {
//       'ru' || 'en' => locale,
//       _ => const Locale('ru'),
//     };
//   }

//   Future<void> changeAppLocale(
//     Locale locale,
//   ) async {
//     await getIt.get<SharedPreferService>().saveLocale(locale);
//     emit(
//       (state as AppCurrentSettingsState).copyWith(
//         curLocale: locale,
//       ),
//     );
//   }
// }
