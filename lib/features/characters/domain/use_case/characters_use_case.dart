import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty_app/core/error/failure.dart';
import 'package:rick_and_morty_app/core/use_case/base_use_case.dart';
import 'package:rick_and_morty_app/features/characters/domain/entity/response_entity.dart';
import 'package:rick_and_morty_app/features/characters/domain/repository/repository.dart';

@singleton
final class FetchCharatersUseCase extends UseCase<ResponseEntity, Null> {
  final CharactersRepository _repository;
  FetchCharatersUseCase(this._repository);
  @override
  Future<Either<Failure, ResponseEntity>> call(params) async {
    return await _repository.fetchCharacters();
  }
}
