// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_routes.dart';

/// generated route for
/// [BottomNavScreen]
class BottomNavRoute extends PageRouteInfo<void> {
  const BottomNavRoute({List<PageRouteInfo>? children})
      : super(
          BottomNavRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BottomNavScreen();
    },
  );
}

/// generated route for
/// [CharactersScreen]
class CharactersRoute extends PageRouteInfo<CharactersRouteArgs> {
  CharactersRoute({
    String? status,
    String? gender,
    List<PageRouteInfo>? children,
  }) : super(
          CharactersRoute.name,
          args: CharactersRouteArgs(
            status: status,
            gender: gender,
          ),
          initialChildren: children,
        );

  static const String name = 'CharactersRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CharactersRouteArgs>(
          orElse: () => const CharactersRouteArgs());
      return CharactersScreen(
        status: args.status,
        gender: args.gender,
      );
    },
  );
}

class CharactersRouteArgs {
  const CharactersRouteArgs({
    this.status,
    this.gender,
  });

  final String? status;

  final String? gender;

  @override
  String toString() {
    return 'CharactersRouteArgs{status: $status, gender: $gender}';
  }
}

/// generated route for
/// [FavoritesScreen]
class FavoritesRoute extends PageRouteInfo<void> {
  const FavoritesRoute({List<PageRouteInfo>? children})
      : super(
          FavoritesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoritesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FavoritesScreen();
    },
  );
}
