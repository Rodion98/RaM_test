part of 'characters_bloc.dart';

@freezed
class CharactersEvent with _$CharactersEvent {
  const factory CharactersEvent.fetch({
    String? status,
    String? gender,
    String? name,
    int? page,
  }) = _FetchCharacters;
}
