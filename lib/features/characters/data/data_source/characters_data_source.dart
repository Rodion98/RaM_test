import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import 'package:rick_and_morty_app/features/characters/data/models/response_model/response_model.dart';

part 'characters_data_source.g.dart';

@RestApi()
@singleton
abstract class CharactersDataSource {
  @factoryMethod
  factory CharactersDataSource(Dio dio) = _CharactersDataSource;

  @GET('/character')
  Future<HttpResponse<ResponseModel>> getCharacters({
    @Query("name") String? name,
    @Query("status") String? status,
    @Query("gender") String? gender,
    @Query("page") int? page,
  });
}
