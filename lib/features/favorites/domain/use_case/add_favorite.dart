import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty_app/core/error/failure.dart';
import 'package:rick_and_morty_app/core/use_case/base_use_case.dart';
import 'package:rick_and_morty_app/features/characters/domain/entity/character_entity.dart';
import 'package:rick_and_morty_app/features/favorites/domain/repository/favorite_repo.dart';

@singleton
final class AddFavoriteUseCase
    extends UseCase<List<CharacterEntity>, CharacterEntity> {
  final FavoriteRepo _favoriteRepo;

  AddFavoriteUseCase(this._favoriteRepo);

  @override
  Future<Either<Failure, List<CharacterEntity>>> call(
      CharacterEntity params) async {
    return await _favoriteRepo.addFavorite(params);
  }
}
