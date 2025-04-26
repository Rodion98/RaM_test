import 'package:injectable/injectable.dart';
import 'package:rick_and_morty_app/core/utils/hive_service.dart';
import 'package:rick_and_morty_app/features/favorites/data/local/character_hive_model.dart';

@singleton
class FavoriteDataSource {
  final HiveService _hiveService;

  FavoriteDataSource(this._hiveService);

  Future<void> saveCharacter(CharacterHiveModel character) async {
    await _hiveService.addFavorite(character);
  }

  CharacterHiveModel? getCharacter(int id) {
    return _hiveService.getFavorite(id);
  }

  Future<void> deleteCharacter(int id) async {
    await _hiveService.deleteFavorite(id);
  }

  List<CharacterHiveModel> getAllCharacters() {
    return _hiveService.favoritesList;
  }

  Set<int> getFavotiteIds() {
    return _hiveService.favoritesIds;
  }
}
