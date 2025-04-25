import 'package:rick_and_morty_app/features/characters/domain/entity/character_entity.dart';
import 'package:rick_and_morty_app/features/characters/domain/entity/info_entity.dart';

class ResponseEntity {
  final List<CharacterEntity> results;
  final InfoEntity info;

  ResponseEntity({required this.info, required this.results});
}
