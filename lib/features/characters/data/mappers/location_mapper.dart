import 'package:injectable/injectable.dart';
import 'package:rick_and_morty_app/core/mapper/mapper.dart';
import 'package:rick_and_morty_app/features/characters/data/models/character_location/character_location.dart';
import 'package:rick_and_morty_app/features/characters/domain/entity/character_location_entity.dart';

@lazySingleton
class CharacterLocationMapper
    implements BaseMapper<CharacterLocationModel?, CharacterLocationEntity?> {
  @override
  CharacterLocationEntity? map(CharacterLocationModel? from) {
    return CharacterLocationEntity(
      name: from?.name ?? '',
      url: from?.url ?? '',
    );
  }
}
