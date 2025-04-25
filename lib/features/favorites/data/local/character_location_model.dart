import 'package:hive/hive.dart';
import 'package:rick_and_morty_app/features/characters/domain/entity/character_location_entity.dart';

part 'character_location_model.g.dart';

@HiveType(typeId: 0)
class CharacterLocationHiveModel extends HiveObject {
  CharacterLocationHiveModel({
    this.name,
    this.url,
  });

  @HiveField(0)
  String? name;

  @HiveField(1)
  String? url;

  factory CharacterLocationHiveModel.fromEntity(
      CharacterLocationEntity entity) {
    return CharacterLocationHiveModel(
      name: entity.name,
      url: entity.url,
    );
  }

  CharacterLocationEntity toEntity() {
    return CharacterLocationEntity(
      name: name,
      url: url,
    );
  }
}
