import 'package:dartz/dartz.dart';
import 'package:rick_and_morty_app/core/error/failure.dart';
import 'package:rick_and_morty_app/features/characters/domain/entity/character_entity.dart';

abstract interface class FavoriteRepo {
  Future<Either<Failure, List<CharacterEntity>>> fetchFavorites();
}
