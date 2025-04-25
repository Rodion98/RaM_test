import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty_app/core/error/exception_handler.dart';
import 'package:rick_and_morty_app/core/error/failure.dart';
import 'package:rick_and_morty_app/features/characters/domain/entity/character_entity.dart';
import 'package:rick_and_morty_app/features/characters/domain/entity/filter_entity.dart';
import 'package:rick_and_morty_app/features/favorites/domain/use_case/fetch_favorites.dart';

part 'favorites_bloc.freezed.dart';

part 'favorites_event.dart';
part 'favorites_state.dart';

@singleton
class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  final FetchFavoritesUseCase fetchFavoritesUseCase;

  FavoritesBloc({required this.fetchFavoritesUseCase})
      : super(FavoritesState()) {
    on<_FetchFavorites>(fetchFavorites);
  }

  Future<void> fetchFavorites(
    _FetchFavorites event,
    Emitter<FavoritesState> emit,
  ) async {
    emit(state.copyWith(status: StateStatus.loading));
    try {
      // if (currentFilter == JokeType.favorites) {
      // final favoritesJokes = await _fetchFavoritesJokesUseCase.getFavorites();
      // _emitLoaded(favoritesJokes, currentFilter);
      // } else if (currentFilter == JokeType.all) {
      final favorites = await fetchFavoritesUseCase(null);
      print(favorites.length());
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
      // } else {
      //   final jokes = await _fetchByTypeUseCase(currentFilter.apiValue);
      //   jokes.fold(
      //     (failure) =>
      //         emit(state.copyWith(status: JokesStatus.error, failure: failure)),
      //     (jokes) {
      //       _emitLoaded(jokes, currentFilter);
      //     },
      //   );
      // }
    } catch (e) {
      emit(state.copyWith(
        status: StateStatus.error,
        failure: ErrorHandler.handle(e),
      ));
    }
    // try {
    //   ResponseEntity _characters = await characterUseCase.call(
    //       event.name, event.status, event.gender, event.page);
    //   emit(CharacterState.success(character: _characters));
    // } catch (_) {
    //   emit(const CharacterState.failure());
    // }
  }
}
