import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/core/io_ui.dart';
import 'package:rick_and_morty_app/core/shared/app_spacing.dart';
import 'package:rick_and_morty_app/features/characters/presentation/bloc/characters_bloc.dart';
import 'package:rick_and_morty_app/features/characters/presentation/widgets/bloc_state_builder.dart';
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
      appBar: AppBar(
        actions: [
          PopupMenuButton<CharacterSortOrder>(
            color: AppColors.greyStatus,
            iconColor: AppColors.whiteText,
            onSelected: (order) {
              context
                  .read<FavoritesBloc>()
                  .add(FavoritesEvent.sortCharacters(order));
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: CharacterSortOrder.nameAsc,
                child: Text(
                  'По имени (А → Я)',
                  style: AppTextStyle.filterWhite16,
                ),
              ),
              const PopupMenuItem(
                value: CharacterSortOrder.nameDesc,
                child: Text(
                  'По имени (Я → А)',
                  style: AppTextStyle.filterWhite16,
                ),
              ),
            ],
            icon: const Icon(Icons.sort),
          ),
          Gap.medium()
        ],
      ),
      body: BlocStateBuilder<FavoritesBloc, FavoritesState>(
        statusSelector: (state) => state.status,
        failureSelector: (state) => state.failure,
        onRetry: () {
          context
              .read<FavoritesBloc>()
              .add(const FavoritesEvent.fetchFavorites());
        },
        isEmpty: (state) => state.favorites.isEmpty,
        onLoaded: (state) => Padding(
          padding: AppProps.pH12,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder: (child, animation) {
              return FadeTransition(opacity: animation, child: child);
            },
            child: BuildListView(
              key: ValueKey(state.sortOrder),
              characters: state.favorites,
            ),
          ),
        ),
      ),
    );
  }
}
