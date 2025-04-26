part of 'favorites_bloc.dart';

@freezed
class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.fetchFavorites() = _FetchFavorites;
  const factory FavoritesEvent.addFavorite(
      {required CharacterEntity character}) = _AddFavorite;
  const factory FavoritesEvent.removeFavorite({required int id}) =
      _RemoveFavorite;
  const factory FavoritesEvent.sortCharacters(CharacterSortOrder order) =
      _SortCharacters;
  const factory FavoritesEvent.fetchFavoritesIds() = _FetchFavoritesIds;
}
