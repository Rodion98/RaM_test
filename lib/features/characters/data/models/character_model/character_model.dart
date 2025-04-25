import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_app/features/characters/data/models/character_location/character_location.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@freezed
class CharacterModel with _$CharacterModel {
  const factory CharacterModel({
    final int? id,
    final String? name,
    final String? status,
    final String? species,
    final String? type,
    final String? gender,
    final CharacterLocationModel? origin,
    final CharacterLocationModel? location,
    final String? image,
    final List<String>? episode,
    final String? url,
    final DateTime? created,
  }) = _CharacterModel;
  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);
}
