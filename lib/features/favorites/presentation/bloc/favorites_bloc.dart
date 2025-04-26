import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty_app/core/error/exception_handler.dart';
import 'package:rick_and_morty_app/core/error/failure.dart';
import 'package:rick_and_morty_app/features/characters/domain/entity/character_entity.dart';
import 'package:rick_and_morty_app/features/favorites/domain/use_case/add_favorite.dart';
import 'package:rick_and_morty_app/features/favorites/domain/use_case/favorite_ids.dart';
import 'package:rick_and_morty_app/features/favorites/domain/use_case/fetch_favorites.dart';
import 'package:rick_and_morty_app/features/favorites/domain/use_case/remove_favorite.dart';

part 'favorites_bloc.freezed.dart';

part 'favorites_event.dart';
part 'favorites_state.dart';

@singleton
class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  final FetchFavoritesUseCase fetchFavoritesUseCase;
  final AddFavoriteUseCase addFavoriteUseCase;
  final RemoveFavoriteUseCase removeFavoriteUseCase;
  final FavoriteIdsUseCase favoriteIdsUseCase;

  FavoritesBloc(
    this.addFavoriteUseCase,
    this.removeFavoriteUseCase,
    this.fetchFavoritesUseCase,
    this.favoriteIdsUseCase,
  ) : super(FavoritesState()) {
    on<_FetchFavoritesIds>(fetchFavoriteIds);
    on<_FetchFavorites>(fetchFavorites);
    on<_AddFavorite>(addFavorite);
    on<_RemoveFavorite>(removeFavorite);
    on<_SortCharacters>(sortFavorite);
  }

  void sortFavorite(
    _SortCharacters event,
    Emitter<FavoritesState> emit,
  ) {
    var order = event.order;
    final sorted = List<CharacterEntity>.from(state.favorites);
    switch (order) {
      case CharacterSortOrder.nameAsc:
        sorted.sort((a, b) => a.name!.compareTo(b.name!));
        break;
      case CharacterSortOrder.nameDesc:
        sorted.sort((a, b) => b.name!.compareTo(a.name!));
        break;
    }
    emit(
      state.copyWith(
        status: StateStatus.loaded,
        favorites: sorted,
        sortOrder: order,
      ),
    );
  }

  Future<void> fetchFavoriteIds(
    _FetchFavoritesIds event,
    Emitter<FavoritesState> emit,
  ) async {
    final favoriteIds = await favoriteIdsUseCase.call(null);
    favoriteIds.fold(
      (failure) =>
          emit(state.copyWith(status: StateStatus.error, failure: failure)),
      (favoriteIds) {
        emit(
          state.copyWith(
            status: StateStatus.loaded,
            favoriteIds: favoriteIds,
          ),
        );
      },
    );
  }

  Future<void> addFavorite(
    _AddFavorite event,
    Emitter<FavoritesState> emit,
  ) async {
    emit(state.copyWith(status: StateStatus.loading));
    try {
      final favorites = await addFavoriteUseCase(event.character);
      favorites.fold(
        (failure) =>
            emit(state.copyWith(status: StateStatus.error, failure: failure)),
        (characters) {
          final updatedFavoritesIds = {...state.favoriteIds}
            ..add(event.character.id!);
          emit(
            state.copyWith(
                status: StateStatus.loaded,
                favorites: characters,
                favoriteIds: updatedFavoritesIds),
          );
        },
      );
    } catch (e) {
      emit(state.copyWith(
        status: StateStatus.error,
        failure: ErrorHandler.handle(e),
      ));
    }
  }

  Future<void> removeFavorite(
    _RemoveFavorite event,
    Emitter<FavoritesState> emit,
  ) async {
    emit(state.copyWith(status: StateStatus.loading));
    try {
      final favorites = await removeFavoriteUseCase(event.id);
      favorites.fold(
        (failure) =>
            emit(state.copyWith(status: StateStatus.error, failure: failure)),
        (characters) {
          final updatedFavoritesIds = {...state.favoriteIds}..remove(event.id);
          emit(
            state.copyWith(
              status: StateStatus.loaded,
              favorites: characters,
              favoriteIds: updatedFavoritesIds,
            ),
          );
        },
      );
    } catch (e) {
      emit(state.copyWith(
        status: StateStatus.error,
        failure: ErrorHandler.handle(e),
      ));
    }
  }

  Future<void> fetchFavorites(
    _FetchFavorites event,
    Emitter<FavoritesState> emit,
  ) async {
    emit(state.copyWith(status: StateStatus.loading));
    try {
      final favorites = await fetchFavoritesUseCase(null);
      favorites.fold(
        (failure) =>
            emit(state.copyWith(status: StateStatus.error, failure: failure)),
        (characters) {
          emit(
            state.copyWith(
              status: StateStatus.loaded,
              favorites: characters,
            ),
          );
        },
      );
    } catch (e) {
      emit(state.copyWith(
        status: StateStatus.error,
        failure: ErrorHandler.handle(e),
      ));
    }
  }
}
