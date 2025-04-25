import 'package:auto_route/annotations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/core/io_ui.dart';
import 'package:rick_and_morty_app/core/shared/app_spacing.dart';
import 'package:rick_and_morty_app/features/characters/presentation/widgets/build_list_view.dart';
import 'package:rick_and_morty_app/features/favorites/presentation/bloc/favorites_bloc.dart';

@RoutePage()
class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  void initState() {
    super.initState();

    context.read<FavoritesBloc>().add(
          const FavoritesEvent.fetchFavorites(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('sadf')
          //  MyTextFiled(widget.gender, widget.status),
          ),
      body: BlocBuilder<FavoritesBloc, FavoritesState>(
        builder: (context, state) {
          final status = state.status;

          switch (status) {
            case StateStatus.initial:
              return const Center(child: CircularProgressIndicator());
            case StateStatus.loading:
              return const Center(child: CircularProgressIndicator());
            case StateStatus.error:
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Произошла ошибка'),
                    if (state.failure != null) Text(state.failure!.message),
                    Gap.medium(),
                    ElevatedButton(
                      onPressed: () {
                        context
                            .read<FavoritesBloc>()
                            .add(const FavoritesEvent.fetchFavorites());
                      },
                      child: const Text('Повторить'),
                    ),
                  ],
                ),
              );
            case StateStatus.loaded:
              return (Padding(
                padding: AppProps.pH12,
                child: Column(
                  children: [
                    // _buildCountAndView(character.info.count!),
                    BuildListView(characters: state.favorites)
                  ],
                ),
              ));
          }
        },
      ),
    );
  }
}
