part of 'favorites_bloc.dart';

enum StateStatus { initial, loading, loaded, error }

@freezed
class FavoritesState with _$FavoritesState {
  factory FavoritesState({
    @Default(StateStatus.initial) StateStatus status,
    // @Default(FilterEntity(gender: null, liveStatus: null))
    // FilterEntity currentFilter,
    // @Default('') String searchQuery,
    // @Default(<int>{}) Set<int> favoriteIds,
    @Default(<CharacterEntity>[]) List<CharacterEntity> favorites,
    // @Default(<CharacterEntity>[]) List<CharacterEntity> visibleCharacters,
    Failure? failure,
  }) = _FavoritesState;
}
