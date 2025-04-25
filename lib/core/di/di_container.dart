import 'package:injectable/injectable.dart';
import 'package:rick_and_morty_app/app/service_locators.dart';
import 'package:rick_and_morty_app/core/di/di_container.config.dart';

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies() => getIt.init();
