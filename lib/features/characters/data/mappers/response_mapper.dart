import 'package:injectable/injectable.dart';
import 'package:rick_and_morty_app/core/mapper/mapper.dart';
import 'package:rick_and_morty_app/features/characters/data/mappers/character_mapper.dart';
import 'package:rick_and_morty_app/features/characters/data/models/response_model/response_model.dart';
import 'package:rick_and_morty_app/features/characters/domain/entity/response_entity.dart';
import 'package:rick_and_morty_app/features/characters/domain/entity/info_entity.dart';

@lazySingleton
class ResponseModelToEntityMapper
    implements BaseMapper<ResponseModel, ResponseEntity> {
  final CharacterMapper _characterMapper;

  ResponseModelToEntityMapper(this._characterMapper);
  @override
  ResponseEntity map(ResponseModel from) {
    return ResponseEntity(
        info: InfoEntity(
          count: from.info.count ?? 0,
          pages: from.info.pages ?? 0,
          next: from.info.next ?? '',
          prev: from.info.prev ?? '',
        ),
        results: from.results.map((e) => _characterMapper.map(e)).toList());
  }
}
