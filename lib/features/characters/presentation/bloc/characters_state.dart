part of 'characters_bloc.dart';

enum StateStatus { initial, loading, loaded, error }

@freezed
class CharactersState with _$CharactersState {
  factory CharactersState({
    @Default(StateStatus.initial) StateStatus status,
    @Default(FilterEntity(gender: null, liveStatus: null))
    FilterEntity currentFilter,
    // @Default('') String searchQuery,
    // @Default(<int>{}) Set<int> favoriteIds,
    @Default(<CharacterEntity>[]) List<CharacterEntity> characters,
    // @Default(<CharacterEntity>[]) List<CharacterEntity> visibleCharacters,
    Failure? failure,
  }) = _CharactersState;
}
