import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty_app/app/router/routes_path_const.dart';
import 'package:rick_and_morty_app/features/bottom_nav/bottom_nav_screen.dart';
import 'package:rick_and_morty_app/features/characters/presentation/characters_screen.dart';
import 'package:rick_and_morty_app/features/favorites/presentation/favorites_screen.dart';

part 'app_routes.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: BottomNavRoute.page,
          path: RoutesPaths.main,
          children: [
            AutoRoute(
              page: CharactersRoute.page,
              path: RoutesPaths.characters,
            ),
            AutoRoute(
              page: FavoritesRoute.page,
              path: RoutesPaths.favorites,
            ),
          ],
        ),
      ];
}
