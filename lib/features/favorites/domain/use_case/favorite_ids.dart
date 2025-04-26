import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty_app/core/error/failure.dart';
import 'package:rick_and_morty_app/core/use_case/base_use_case.dart';
import 'package:rick_and_morty_app/features/favorites/domain/repository/favorite_repo.dart';

@singleton
final class FavoriteIdsUseCase extends UseCase<Set<int>, Null> {
  final FavoriteRepo _favoriteRepo;

  FavoriteIdsUseCase(this._favoriteRepo);

  @override
  Future<Either<Failure, Set<int>>> call(params) async {
    return await _favoriteRepo.favoriteIds();
  }
}
