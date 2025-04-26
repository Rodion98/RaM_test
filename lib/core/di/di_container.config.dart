// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../app/router/app_routes.dart' as _i1041;
import '../../features/characters/data/data_source/characters_data_source.dart'
    as _i944;
import '../../features/characters/data/mappers/character_mapper.dart' as _i1059;
import '../../features/characters/data/mappers/location_mapper.dart' as _i941;
import '../../features/characters/data/mappers/response_mapper.dart' as _i898;
import '../../features/characters/data/repository/characters_repo_impl.dart'
    as _i210;
import '../../features/characters/domain/repository/repository.dart' as _i903;
import '../../features/characters/domain/use_case/characters_use_case.dart'
    as _i644;
import '../../features/characters/presentation/bloc/characters_bloc.dart'
    as _i91;
import '../../features/favorites/data/data_source/favorite_data_source.dart'
    as _i338;
import '../../features/favorites/data/repository/favorite_repo_impl.dart'
    as _i555;
import '../../features/favorites/domain/repository/favorite_repo.dart' as _i712;
import '../../features/favorites/domain/use_case/add_favorite.dart' as _i16;
import '../../features/favorites/domain/use_case/favorite_ids.dart' as _i197;
import '../../features/favorites/domain/use_case/fetch_favorites.dart' as _i833;
import '../../features/favorites/domain/use_case/remove_favorite.dart' as _i80;
import '../../features/favorites/presentation/bloc/favorites_bloc.dart'
    as _i429;
import '../dio/dio_module.dart' as _i977;
import '../utils/clipboard_util.dart' as _i56;
import '../utils/hive_service.dart' as _i159;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    gh.factory<_i56.ClipboardUtil>(() => _i56.ClipboardUtil());
    gh.singleton<_i1041.AppRouter>(() => _i1041.AppRouter());
    gh.singleton<_i361.Dio>(() => dioModule.baseModule());
    gh.lazySingleton<_i941.CharacterLocationMapper>(
        () => _i941.CharacterLocationMapper());
    gh.singleton<_i944.CharactersDataSource>(
        () => _i944.CharactersDataSource(gh<_i361.Dio>()));
    gh.singleton<_i338.FavoriteDataSource>(
        () => _i338.FavoriteDataSource(gh<_i159.HiveService>()));
    gh.lazySingleton<_i1059.CharacterMapper>(
        () => _i1059.CharacterMapper(gh<_i941.CharacterLocationMapper>()));
    gh.lazySingleton<_i898.ResponseModelToEntityMapper>(
        () => _i898.ResponseModelToEntityMapper(gh<_i1059.CharacterMapper>()));
    gh.singleton<_i712.FavoriteRepo>(
        () => _i555.FavoriteRepoImpl(gh<_i338.FavoriteDataSource>()));
    gh.singleton<_i903.CharactersRepository>(() => _i210.CharactersRepoImpl(
          gh<_i944.CharactersDataSource>(),
          gh<_i898.ResponseModelToEntityMapper>(),
        ));
    gh.singleton<_i16.AddFavoriteUseCase>(
        () => _i16.AddFavoriteUseCase(gh<_i712.FavoriteRepo>()));
    gh.singleton<_i833.FetchFavoritesUseCase>(
        () => _i833.FetchFavoritesUseCase(gh<_i712.FavoriteRepo>()));
    gh.singleton<_i80.RemoveFavoriteUseCase>(
        () => _i80.RemoveFavoriteUseCase(gh<_i712.FavoriteRepo>()));
    gh.singleton<_i197.FavoriteIdsUseCase>(
        () => _i197.FavoriteIdsUseCase(gh<_i712.FavoriteRepo>()));
    gh.singleton<_i429.FavoritesBloc>(() => _i429.FavoritesBloc(
          gh<_i16.AddFavoriteUseCase>(),
          gh<_i80.RemoveFavoriteUseCase>(),
          gh<_i833.FetchFavoritesUseCase>(),
          gh<_i197.FavoriteIdsUseCase>(),
        ));
    gh.singleton<_i644.FetchCharatersUseCase>(
        () => _i644.FetchCharatersUseCase(gh<_i903.CharactersRepository>()));
    gh.singleton<_i91.CharactersBloc>(() => _i91.CharactersBloc(
        characterUseCase: gh<_i644.FetchCharatersUseCase>()));
    return this;
  }
}

class _$DioModule extends _i977.DioModule {}
