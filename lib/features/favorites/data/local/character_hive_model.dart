import 'package:hive/hive.dart';
import 'package:rick_and_morty_app/features/characters/domain/entity/character_entity.dart';
import 'package:rick_and_morty_app/features/favorites/data/local/character_location_model.dart';

part 'character_hive_model.g.dart';

@HiveType(typeId: 1)
class CharacterHiveModel extends HiveObject {
  CharacterHiveModel({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.origin,
    this.location,
    this.image,
    this.episode,
    this.url,
    this.created,
  });

  @HiveField(0)
  int? id;

  @HiveField(1)
  String? name;

  @HiveField(2)
  String? status;

  @HiveField(3)
  String? species;

  @HiveField(4)
  String? type;

  @HiveField(5)
  String? gender;

  @HiveField(6)
  CharacterLocationHiveModel? origin;

  @HiveField(7)
  CharacterLocationHiveModel? location;

  @HiveField(8)
  String? image;

  @HiveField(9)
  List<String>? episode;

  @HiveField(10)
  String? url;

  @HiveField(11)
  DateTime? created;

  factory CharacterHiveModel.fromEntity(CharacterEntity entity) {
    return CharacterHiveModel(
      id: entity.id,
      name: entity.name,
      status: entity.status,
      species: entity.species,
      type: entity.type,
      gender: entity.gender,
      origin: entity.origin != null
          ? CharacterLocationHiveModel.fromEntity(entity.origin!)
          : null,
      location: entity.location != null
          ? CharacterLocationHiveModel.fromEntity(entity.location!)
          : null,
      image: entity.image,
      episode: entity.episode,
      url: entity.url,
      created: entity.created,
    );
  }

  CharacterEntity toEntity() {
    return CharacterEntity(
      id: id,
      name: name,
      status: status,
      species: species,
      type: type,
      gender: gender,
      origin: origin?.toEntity(),
      location: location?.toEntity(),
      image: image,
      episode: episode,
      url: url,
      created: created,
    );
  }
}
