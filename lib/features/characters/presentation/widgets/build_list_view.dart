import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_app/core/io_ui.dart';
import 'package:rick_and_morty_app/core/shared/app_sizes.dart';
import 'package:rick_and_morty_app/core/shared/app_spacing.dart';
import 'package:rick_and_morty_app/features/characters/domain/entity/character_entity.dart';
import 'package:rick_and_morty_app/features/favorites/presentation/bloc/favorites_bloc.dart';

class BuildListView extends StatelessWidget {
  const BuildListView({
    super.key,
    required this.characters,
  });

  final List<CharacterEntity> characters;

  @override
  Widget build(BuildContext context) {
    var favoritesBloc = context.read<FavoritesBloc>();
    return BlocBuilder<FavoritesBloc, FavoritesState>(
      builder: (context, favoriteState) {
        final favoriteIds = favoriteState.favoriteIds;
        return ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider(
              color: AppColors.greyStatus,
              thickness: 0.5,
            );
          },
          itemCount: characters.length,
          itemBuilder: (context, index) {
            var character = characters[index];
            final isFavorite = favoriteIds.contains(character.id);
            return CharacterTile(
                character: character,
                isFavorite: isFavorite,
                favoritesBloc: favoritesBloc);
          },
        );
      },
    );
  }
}

class CharacterTile extends StatelessWidget {
  const CharacterTile({
    super.key,
    required this.character,
    required this.isFavorite,
    required this.favoritesBloc,
  });

  final CharacterEntity character;
  final bool isFavorite;
  final FavoritesBloc favoritesBloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSizes.size4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(
                height: AppSizes.size64,
                width: AppSizes.size64,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(character.image!),
                ),
              ),
              Gap.medium(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    character.status ?? '',
                    style: (character.status == 'Alive')
                        ? AppTextStyle.aliveText10
                        : AppTextStyle.deadText10,
                  ),
                  Text(
                    character.name ?? '',
                    style: AppTextStyle.nameInListText16,
                  ),
                  Text(
                    '${character.species}, ${character.gender}',
                    style: AppTextStyle.statusText12,
                  ),
                  Text(
                    '${character.location?.name ?? ''},',
                    style: AppTextStyle.nameInGridText14,
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              isFavorite
                  ? favoritesBloc.add(
                      FavoritesEvent.removeFavorite(id: character.id!),
                    )
                  : favoritesBloc.add(
                      FavoritesEvent.addFavorite(character: character),
                    );
              _showFavoriteSnackbar(context, isFavorite);
            },
            icon: isFavorite
                ? const Icon(
                    Icons.star,
                    color: AppColors.whiteText,
                  )
                : const Icon(
                    Icons.star_border,
                    color: AppColors.whiteText,
                  ),
          )
        ],
      ),
    );
  }

  void _showFavoriteSnackbar(BuildContext context, bool wasFavorite) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppSizes.size12),
            topRight: Radius.circular(AppSizes.size12),
          ),
        ),
        backgroundColor: AppColors.greyStatus,
        content: Center(
          child: Text(
            wasFavorite
                ?
                //  locale.removedFromFav
                'Удалено из избранного'
                :
                // locale.addedToFav
                'Добавлено в избранное',
            style: AppTextStyle.nameInGridText14,
          ),
        ),
        duration: const Duration(milliseconds: 700),
      ),
    );
  }
}
