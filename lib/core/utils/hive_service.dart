import 'dart:async';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:rick_and_morty_app/features/favorites/data/local/character_hive_model.dart';
import 'package:rick_and_morty_app/features/favorites/data/local/character_location_model.dart';

const String _boxfavorites = 'favorites';

class HiveService {
  late Box<CharacterHiveModel> favorites; // Store favorite details

  Future<HiveService> init() async {
    await Hive.initFlutter();
    Hive
      ..registerAdapter(CharacterLocationHiveModelAdapter())
      ..registerAdapter(CharacterHiveModelAdapter());

    favorites = await Hive.openBox<CharacterHiveModel>(_boxfavorites);

    return this;
  }

// users box
  Future<void> addFavorite(CharacterHiveModel character) async {
    if (character.id == null) {
      throw ArgumentError('Character ID cannot be null');
    }
    await favorites.put(character.id, character);
  }

  CharacterHiveModel? getFavorite(int? id) => favorites.get(id);

  Future<void> deleteFavorite(int? id) async {
    await favorites.delete(id);
  }

  List<CharacterHiveModel> get favoritesList => favorites.values.toList();

  // // home chats box
  // Future<void> addHomeChat(HomeChatsModel homeChatsModel) async {
  //   await homeChats.add(homeChatsModel);
  // }

  // List<HomeChatsModel> getHomeChats() {
  //   try {
  //     log('value of chats: ${homeChats.values.toList().length}');
  //     return homeChats.values.toList();
  //   } catch (e) {
  //     return [];
  //   }
  // }

  // Future<void> deleteHomeChat(HomeChatsModel homeChatsModel) async {
  //   await homeChats.delete(homeChatsModel.key);
  // }

  // ValueListenable<Box<HomeChatsModel>> get homeChatsBox =>
  //     homeChats.listenable();

  // Future<void> deleteChats(RentalType type) async {
  //   final chats = getHomeChats();
  //   final chatToRemove =
  //       chats.where((e) => e.name == type.name).map((e) => e.key);
  //   await homeChats.deleteAll(chatToRemove);
  // }

  // // uuid box
  // Future<void> _initUUID() async {
  //   if (uuidBox.get(_boxUUID) == null) {
  //     final uuid = const Uuid().v4();
  //     await uuidBox.put(_boxUUID, uuid);
  //   }
  // }

  // String getUUID() => uuidBox.get(_boxUUID) ?? '';

  // // settings box
  // Future<void> setZoomInfoWatched(bool value) async {
  //   await settings.put(_zoomInfoWatched, value);
  // }

  // bool get zoomInfoWatched => settings.get(_zoomInfoWatched) ?? false;

  // // car numbers box
  // Future<void> addCarNumber(String carNumber) async {
  //   await carNumbersBox.put(carNumber, carNumber);
  // }

  // List<String> getCarNumbers() => carNumbersBox.values.toList();

  // Future<void> deleteCarNumber(String carNumber) async {
  //   await carNumbersBox.delete(carNumber);
  // }

  // Future<void> deleteAllCarNumbers() async {
  //   await carNumbersBox.clear();
  // }

  // ValueListenable<Box<String>> get carNumbersBoxListenable =>
  //     carNumbersBox.listenable();

  // // saved search
  // Future<void> addSavedSearch(String search) async {
  //   // if box length is more than 4 delete last
  //   if (savedSearch.length > 4) {
  //     await savedSearch.deleteAt(4);
  //   }
  //   await savedSearch.put(search, search);
  // }

  // List<String> getSavedSearch() => savedSearch.values.toList();

  // Future<void> deleteSavedSearch(String search) async {
  //   await savedSearch.delete(search);
  // }

  // Future<void> deleteAllSavedSearch() async {
  //   await savedSearch.clear();
  // }

  // ValueListenable<Box<String>> get savedSearchListenable =>
  //     savedSearch.listenable();

  // // app lifecycle date
  // Future<void> setAppLifecycleDate(DateTime date) async {
  //   await appLifecycleBox.put(_boxAppLifecycle, date);
  // }

  // DateTime get appLifecycleDate =>
  //     appLifecycleBox.get(_boxAppLifecycle) ?? DateTime.now();

  // Future<void> deleteAppLifecycleDate() async {
  //   await appLifecycleBox.delete(_boxAppLifecycle);
  // }

  // // alarcha cart
  // Future<void> setAlarchaCart(String cart) async {
  //   await alarchaCartBox.put(_boxAlarchaCart, cart);
  // }

  // String getAlarchaCart() {
  //   final cart = alarchaCartBox.get(_boxAlarchaCart) ?? '{}';
  //   return cart;
  // }

  // Future<void> deleteAlarchaCart() async {
  //   await alarchaCartBox.delete(_boxAlarchaCart);
  // }
}
