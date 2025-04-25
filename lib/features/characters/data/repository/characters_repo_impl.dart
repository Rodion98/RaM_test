import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty_app/core/constants/code_responces.dart';
import 'package:rick_and_morty_app/core/constants/network_constants.dart';
import 'package:rick_and_morty_app/core/error/exception_handler.dart';
import 'package:rick_and_morty_app/core/error/failure.dart';
import 'package:rick_and_morty_app/core/utils/network_utils.dart';
import 'package:rick_and_morty_app/features/characters/data/data_source/characters_data_source.dart';
import 'package:rick_and_morty_app/features/characters/data/mappers/response_mapper.dart';
import 'package:rick_and_morty_app/features/characters/domain/entity/response_entity.dart';
import 'package:rick_and_morty_app/features/characters/domain/repository/repository.dart';

@Singleton(as: CharactersRepository)
class CharactersRepoImpl implements CharactersRepository {
  // final FavoriteDataSource _favoriteDataSource;
  final CharactersDataSource _charactersDataSource;
  final ResponseModelToEntityMapper _mapper;
  CharactersRepoImpl(
    this._charactersDataSource,
    this._mapper,
    // this._favoriteDataSource,
  );

  @override
  Future<Either<Failure, ResponseEntity>> fetchCharacters({
    String? name,
    String? species,
    String? status,
    String? type,
    String? gender,
    int? page,
  }) async {
    if (!await NetworkChecker.hasConnection()) {
      return const Left(
        NetworkFailure(
          ResponseCode.noInternetConnection,
          strNoInternetError,
        ),
      );
    }

    try {
      final httpResponse = await _charactersDataSource.getCharacters();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        final responseEntity = _mapper.map(httpResponse.data);
        return Right(responseEntity);
      } else {
        return Left(
          ServerFailure(
            httpResponse.response.statusCode ?? ResponseCode.defaultError,
            httpResponse.response.statusMessage ?? strDefaultError,
          ),
        );
      }
    } catch (e) {
      return Left(ErrorHandler.handle(e));
    }
  }
}
