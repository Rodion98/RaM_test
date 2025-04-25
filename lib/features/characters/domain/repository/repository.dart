import 'package:dartz/dartz.dart';
import 'package:rick_and_morty_app/core/error/failure.dart';
import 'package:rick_and_morty_app/features/characters/domain/entity/response_entity.dart';

abstract interface class CharactersRepository {
  Future<Either<Failure, ResponseEntity>> fetchCharacters({
    String? name,
    String? species,
    String? status,
    String? type,
    String? gender,
    int? page,
  });
}
