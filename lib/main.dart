import 'package:rick_and_morty_app/app/app.dart';
import 'package:rick_and_morty_app/bootstrap.dart';

// void main() async {
//   configureDependencies();

//   Hive.registerAdapter(CharacterLocationHiveModelAdapter());
//   Hive.registerAdapter(CharacterHiveModelAdapter());
//   runApp(MyApp());
// }

void main() {
  bootstrap(() => const MyApp());
}
