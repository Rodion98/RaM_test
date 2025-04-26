part of 'characters_bloc.dart';

@freezed
class CharactersState with _$CharactersState {
  factory CharactersState({
    @Default(StateStatus.initial) StateStatus status,
    @Default(<CharacterEntity>[]) List<CharacterEntity> characters,
    Failure? failure,
  }) = _CharactersState;
}
