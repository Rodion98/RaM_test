import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:rick_and_morty_app/core/utils/hive_service.dart';

final getIt = GetIt.instance;

Future<void> setupLocators() async {
  getIt.registerSingletonAsync<HiveService>(
    () async => HiveService().init(),
  );
  await getIt.isReady<HiveService>();
}
