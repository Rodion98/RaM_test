import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_app/features/characters/data/models/info_model/info_model.dart';
import 'package:rick_and_morty_app/features/characters/data/models/character_model/character_model.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

@freezed
class ResponseModel with _$ResponseModel {
  const factory ResponseModel(
      {required List<CharacterModel> results,
      required InfoModel info}) = _ResponseModel;

  factory ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelFromJson(json);
}
