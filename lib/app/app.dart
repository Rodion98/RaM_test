import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/app/router/app_routes.dart';
import 'package:rick_and_morty_app/app/service_locators.dart';
import 'package:rick_and_morty_app/core/io_ui.dart';
import 'package:rick_and_morty_app/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:rick_and_morty_app/features/favorites/presentation/bloc/favorites_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<CharactersBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<FavoritesBloc>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.backgroundColor,
          appBarTheme: AppBarTheme(backgroundColor: AppColors.backgroundColor),
          useMaterial3: true,
        ),
        routerConfig: getIt<AppRouter>().config(),
      ),
    );
  }
}
