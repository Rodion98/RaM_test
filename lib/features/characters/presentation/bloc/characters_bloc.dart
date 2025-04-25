import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rick_and_morty_app/core/error/exception_handler.dart';
import 'package:rick_and_morty_app/core/error/failure.dart';
import 'package:rick_and_morty_app/features/characters/domain/entity/character_entity.dart';
import 'package:rick_and_morty_app/features/characters/domain/entity/filter_entity.dart';
import 'package:rick_and_morty_app/features/characters/domain/entity/response_entity.dart';
import 'package:rick_and_morty_app/features/characters/domain/use_case/characters_use_case.dart';

part 'characters_bloc.freezed.dart';

part 'characters_event.dart';
part 'characters_state.dart';

@singleton
class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final FetchCharatersUseCase characterUseCase;

  CharactersBloc({required this.characterUseCase}) : super(CharactersState()) {
    on<_FetchCharacters>(fetchCharacters);
  }

  Future<void> fetchCharacters(
    _FetchCharacters event,
    Emitter<CharactersState> emit,
  ) async {
    emit(state.copyWith(status: StateStatus.loading));
    try {
      // if (currentFilter == JokeType.favorites) {
      // final favoritesJokes = await _fetchFavoritesJokesUseCase.getFavorites();
      // _emitLoaded(favoritesJokes, currentFilter);
      // } else if (currentFilter == JokeType.all) {
      final allCharacters = await characterUseCase(null);
      print(allCharacters.length());
      allCharacters.fold(
        (failure) =>
            emit(state.copyWith(status: StateStatus.error, failure: failure)),
        (characters) {
          emit(
            state.copyWith(
              status: StateStatus.loaded,
              characters: characters.results,
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
