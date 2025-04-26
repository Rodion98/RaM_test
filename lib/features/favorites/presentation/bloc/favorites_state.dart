part of 'favorites_bloc.dart';

enum StateStatus { initial, loading, loaded, error }

enum CharacterSortOrder { nameAsc, nameDesc }

@freezed
class FavoritesState with _$FavoritesState {
  factory FavoritesState({
    @Default(StateStatus.initial) StateStatus status,
    @Default(<int>{}) Set<int> favoriteIds,
    @Default(<CharacterEntity>[]) List<CharacterEntity> favorites,
    @Default(CharacterSortOrder.nameAsc) CharacterSortOrder sortOrder,
    Failure? failure,
  }) = _FavoritesState;
}
