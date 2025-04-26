import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty_app/core/error/exception_handler.dart';
import 'package:rick_and_morty_app/core/error/failure.dart';
import 'package:rick_and_morty_app/features/characters/domain/entity/character_entity.dart';
import 'package:rick_and_morty_app/features/favorites/data/data_source/favorite_data_source.dart';
import 'package:rick_and_morty_app/features/favorites/data/local/character_hive_model.dart';
import 'package:rick_and_morty_app/features/favorites/domain/repository/favorite_repo.dart';

@Singleton(as: FavoriteRepo)
class FavoriteRepoImpl implements FavoriteRepo {
  final FavoriteDataSource _favoriteDataSource;

  FavoriteRepoImpl(this._favoriteDataSource);

  @override
  Future<Either<Failure, List<CharacterEntity>>> fetchFavorites() async {
    try {
      final charactersHive = _favoriteDataSource.getAllCharacters();

      final responseEntity =
          charactersHive.map((model) => model.toEntity()).toList();

      return Right(responseEntity);
    } catch (e) {
      return Left(ErrorHandler.handle(e));
    }
  }

  @override
  Future<Either<Failure, List<CharacterEntity>>> addFavorite(
      CharacterEntity character) async {
    try {
      var characterHive = CharacterHiveModel.fromEntity(character);
      await _favoriteDataSource.saveCharacter(characterHive);
      final charactersHive = _favoriteDataSource.getAllCharacters();

      final responseEntity =
          charactersHive.map((model) => model.toEntity()).toList();

      return Right(responseEntity);
    } catch (e) {
      return Left(ErrorHandler.handle(e));
    }
  }

  @override
  Future<Either<Failure, List<CharacterEntity>>> removeFavorite(int id) async {
    try {
      await _favoriteDataSource.deleteCharacter(id);
      final charactersHive = _favoriteDataSource.getAllCharacters();

      final responseEntity =
          charactersHive.map((model) => model.toEntity()).toList();

      return Right(responseEntity);
    } catch (e) {
      return Left(ErrorHandler.handle(e));
    }
  }

  @override
  Future<Either<Failure, Set<int>>> favoriteIds() async {
    try {
      final favoriteIds = _favoriteDataSource.getFavotiteIds();
      return Right(favoriteIds);
    } catch (e) {
      return Left(ErrorHandler.handle(e));
    }
  }
}
