import 'package:injectable/injectable.dart';
import 'package:rick_and_morty_app/core/mapper/mapper.dart';
import 'package:rick_and_morty_app/features/characters/data/mappers/location_mapper.dart';
import 'package:rick_and_morty_app/features/characters/data/models/character_model/character_model.dart';
import 'package:rick_and_morty_app/features/characters/domain/entity/character_entity.dart';

@lazySingleton
class CharacterMapper implements BaseMapper<CharacterModel, CharacterEntity> {
  final CharacterLocationMapper _characterLocationMapper;

  CharacterMapper(this._characterLocationMapper);

  @override
  CharacterEntity map(CharacterModel from) {
    return CharacterEntity(
      id: from.id,
      name: from.name,
      status: from.status,
      species: from.species,
      type: from.type,
      gender: from.gender,
      image: from.image,
      episode: from.episode,
      url: from.url,
      created: from.created,
      location: _characterLocationMapper.map(from.location),
      origin: _characterLocationMapper.map(from.origin),
    );
  }
}
