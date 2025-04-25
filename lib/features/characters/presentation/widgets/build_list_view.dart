import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/core/io_ui.dart';
import 'package:rick_and_morty_app/core/shared/app_sizes.dart';
import 'package:rick_and_morty_app/core/shared/app_spacing.dart';
import 'package:rick_and_morty_app/features/characters/domain/entity/character_entity.dart';

class BuildListView extends StatelessWidget {
  const BuildListView({
    super.key,
    required this.characters,
  });

  final List<CharacterEntity> characters;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(
            color: AppColors.greyStatus,
            thickness: 0.5,
          );
        },
        itemCount: characters.length,
        itemBuilder: (context, index) {
          var character = characters[index];
          // if (index == characters.results.length - 1) {
          //   context.read<CharacterBloc>().add(
          //         CharacterEvent.search(page: 3),
          //       );
          // }
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
                IconButton(onPressed: () {}, icon: Icon(Icons.star_border))
              ],
            ),
          );
        },
      ),
    );
  }
}
