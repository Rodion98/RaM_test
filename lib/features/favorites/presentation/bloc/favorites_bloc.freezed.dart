// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFavorites,
    required TResult Function(CharacterEntity character) addFavorite,
    required TResult Function(int id) removeFavorite,
    required TResult Function(CharacterSortOrder order) sortCharacters,
    required TResult Function() fetchFavoritesIds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFavorites,
    TResult? Function(CharacterEntity character)? addFavorite,
    TResult? Function(int id)? removeFavorite,
    TResult? Function(CharacterSortOrder order)? sortCharacters,
    TResult? Function()? fetchFavoritesIds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFavorites,
    TResult Function(CharacterEntity character)? addFavorite,
    TResult Function(int id)? removeFavorite,
    TResult Function(CharacterSortOrder order)? sortCharacters,
    TResult Function()? fetchFavoritesIds,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFavorites value) fetchFavorites,
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
    required TResult Function(_SortCharacters value) sortCharacters,
    required TResult Function(_FetchFavoritesIds value) fetchFavoritesIds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFavorites value)? fetchFavorites,
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
    TResult? Function(_SortCharacters value)? sortCharacters,
    TResult? Function(_FetchFavoritesIds value)? fetchFavoritesIds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFavorites value)? fetchFavorites,
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    TResult Function(_SortCharacters value)? sortCharacters,
    TResult Function(_FetchFavoritesIds value)? fetchFavoritesIds,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesEventCopyWith<$Res> {
  factory $FavoritesEventCopyWith(
          FavoritesEvent value, $Res Function(FavoritesEvent) then) =
      _$FavoritesEventCopyWithImpl<$Res, FavoritesEvent>;
}

/// @nodoc
class _$FavoritesEventCopyWithImpl<$Res, $Val extends FavoritesEvent>
    implements $FavoritesEventCopyWith<$Res> {
  _$FavoritesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchFavoritesImplCopyWith<$Res> {
  factory _$$FetchFavoritesImplCopyWith(_$FetchFavoritesImpl value,
          $Res Function(_$FetchFavoritesImpl) then) =
      __$$FetchFavoritesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchFavoritesImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$FetchFavoritesImpl>
    implements _$$FetchFavoritesImplCopyWith<$Res> {
  __$$FetchFavoritesImplCopyWithImpl(
      _$FetchFavoritesImpl _value, $Res Function(_$FetchFavoritesImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchFavoritesImpl implements _FetchFavorites {
  const _$FetchFavoritesImpl();

  @override
  String toString() {
    return 'FavoritesEvent.fetchFavorites()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchFavoritesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFavorites,
    required TResult Function(CharacterEntity character) addFavorite,
    required TResult Function(int id) removeFavorite,
    required TResult Function(CharacterSortOrder order) sortCharacters,
    required TResult Function() fetchFavoritesIds,
  }) {
    return fetchFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFavorites,
    TResult? Function(CharacterEntity character)? addFavorite,
    TResult? Function(int id)? removeFavorite,
    TResult? Function(CharacterSortOrder order)? sortCharacters,
    TResult? Function()? fetchFavoritesIds,
  }) {
    return fetchFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFavorites,
    TResult Function(CharacterEntity character)? addFavorite,
    TResult Function(int id)? removeFavorite,
    TResult Function(CharacterSortOrder order)? sortCharacters,
    TResult Function()? fetchFavoritesIds,
    required TResult orElse(),
  }) {
    if (fetchFavorites != null) {
      return fetchFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFavorites value) fetchFavorites,
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
    required TResult Function(_SortCharacters value) sortCharacters,
    required TResult Function(_FetchFavoritesIds value) fetchFavoritesIds,
  }) {
    return fetchFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFavorites value)? fetchFavorites,
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
    TResult? Function(_SortCharacters value)? sortCharacters,
    TResult? Function(_FetchFavoritesIds value)? fetchFavoritesIds,
  }) {
    return fetchFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFavorites value)? fetchFavorites,
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    TResult Function(_SortCharacters value)? sortCharacters,
    TResult Function(_FetchFavoritesIds value)? fetchFavoritesIds,
    required TResult orElse(),
  }) {
    if (fetchFavorites != null) {
      return fetchFavorites(this);
    }
    return orElse();
  }
}

abstract class _FetchFavorites implements FavoritesEvent {
  const factory _FetchFavorites() = _$FetchFavoritesImpl;
}

/// @nodoc
abstract class _$$AddFavoriteImplCopyWith<$Res> {
  factory _$$AddFavoriteImplCopyWith(
          _$AddFavoriteImpl value, $Res Function(_$AddFavoriteImpl) then) =
      __$$AddFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CharacterEntity character});
}

/// @nodoc
class __$$AddFavoriteImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$AddFavoriteImpl>
    implements _$$AddFavoriteImplCopyWith<$Res> {
  __$$AddFavoriteImplCopyWithImpl(
      _$AddFavoriteImpl _value, $Res Function(_$AddFavoriteImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
  }) {
    return _then(_$AddFavoriteImpl(
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as CharacterEntity,
    ));
  }
}

/// @nodoc

class _$AddFavoriteImpl implements _AddFavorite {
  const _$AddFavoriteImpl({required this.character});

  @override
  final CharacterEntity character;

  @override
  String toString() {
    return 'FavoritesEvent.addFavorite(character: $character)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavoriteImpl &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavoriteImplCopyWith<_$AddFavoriteImpl> get copyWith =>
      __$$AddFavoriteImplCopyWithImpl<_$AddFavoriteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFavorites,
    required TResult Function(CharacterEntity character) addFavorite,
    required TResult Function(int id) removeFavorite,
    required TResult Function(CharacterSortOrder order) sortCharacters,
    required TResult Function() fetchFavoritesIds,
  }) {
    return addFavorite(character);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFavorites,
    TResult? Function(CharacterEntity character)? addFavorite,
    TResult? Function(int id)? removeFavorite,
    TResult? Function(CharacterSortOrder order)? sortCharacters,
    TResult? Function()? fetchFavoritesIds,
  }) {
    return addFavorite?.call(character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFavorites,
    TResult Function(CharacterEntity character)? addFavorite,
    TResult Function(int id)? removeFavorite,
    TResult Function(CharacterSortOrder order)? sortCharacters,
    TResult Function()? fetchFavoritesIds,
    required TResult orElse(),
  }) {
    if (addFavorite != null) {
      return addFavorite(character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFavorites value) fetchFavorites,
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
    required TResult Function(_SortCharacters value) sortCharacters,
    required TResult Function(_FetchFavoritesIds value) fetchFavoritesIds,
  }) {
    return addFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFavorites value)? fetchFavorites,
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
    TResult? Function(_SortCharacters value)? sortCharacters,
    TResult? Function(_FetchFavoritesIds value)? fetchFavoritesIds,
  }) {
    return addFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFavorites value)? fetchFavorites,
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    TResult Function(_SortCharacters value)? sortCharacters,
    TResult Function(_FetchFavoritesIds value)? fetchFavoritesIds,
    required TResult orElse(),
  }) {
    if (addFavorite != null) {
      return addFavorite(this);
    }
    return orElse();
  }
}

abstract class _AddFavorite implements FavoritesEvent {
  const factory _AddFavorite({required final CharacterEntity character}) =
      _$AddFavoriteImpl;

  CharacterEntity get character;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddFavoriteImplCopyWith<_$AddFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFavoriteImplCopyWith<$Res> {
  factory _$$RemoveFavoriteImplCopyWith(_$RemoveFavoriteImpl value,
          $Res Function(_$RemoveFavoriteImpl) then) =
      __$$RemoveFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$RemoveFavoriteImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$RemoveFavoriteImpl>
    implements _$$RemoveFavoriteImplCopyWith<$Res> {
  __$$RemoveFavoriteImplCopyWithImpl(
      _$RemoveFavoriteImpl _value, $Res Function(_$RemoveFavoriteImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RemoveFavoriteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveFavoriteImpl implements _RemoveFavorite {
  const _$RemoveFavoriteImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'FavoritesEvent.removeFavorite(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFavoriteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFavoriteImplCopyWith<_$RemoveFavoriteImpl> get copyWith =>
      __$$RemoveFavoriteImplCopyWithImpl<_$RemoveFavoriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFavorites,
    required TResult Function(CharacterEntity character) addFavorite,
    required TResult Function(int id) removeFavorite,
    required TResult Function(CharacterSortOrder order) sortCharacters,
    required TResult Function() fetchFavoritesIds,
  }) {
    return removeFavorite(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFavorites,
    TResult? Function(CharacterEntity character)? addFavorite,
    TResult? Function(int id)? removeFavorite,
    TResult? Function(CharacterSortOrder order)? sortCharacters,
    TResult? Function()? fetchFavoritesIds,
  }) {
    return removeFavorite?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFavorites,
    TResult Function(CharacterEntity character)? addFavorite,
    TResult Function(int id)? removeFavorite,
    TResult Function(CharacterSortOrder order)? sortCharacters,
    TResult Function()? fetchFavoritesIds,
    required TResult orElse(),
  }) {
    if (removeFavorite != null) {
      return removeFavorite(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFavorites value) fetchFavorites,
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
    required TResult Function(_SortCharacters value) sortCharacters,
    required TResult Function(_FetchFavoritesIds value) fetchFavoritesIds,
  }) {
    return removeFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFavorites value)? fetchFavorites,
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
    TResult? Function(_SortCharacters value)? sortCharacters,
    TResult? Function(_FetchFavoritesIds value)? fetchFavoritesIds,
  }) {
    return removeFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFavorites value)? fetchFavorites,
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    TResult Function(_SortCharacters value)? sortCharacters,
    TResult Function(_FetchFavoritesIds value)? fetchFavoritesIds,
    required TResult orElse(),
  }) {
    if (removeFavorite != null) {
      return removeFavorite(this);
    }
    return orElse();
  }
}

abstract class _RemoveFavorite implements FavoritesEvent {
  const factory _RemoveFavorite({required final int id}) = _$RemoveFavoriteImpl;

  int get id;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveFavoriteImplCopyWith<_$RemoveFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SortCharactersImplCopyWith<$Res> {
  factory _$$SortCharactersImplCopyWith(_$SortCharactersImpl value,
          $Res Function(_$SortCharactersImpl) then) =
      __$$SortCharactersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CharacterSortOrder order});
}

/// @nodoc
class __$$SortCharactersImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$SortCharactersImpl>
    implements _$$SortCharactersImplCopyWith<$Res> {
  __$$SortCharactersImplCopyWithImpl(
      _$SortCharactersImpl _value, $Res Function(_$SortCharactersImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$SortCharactersImpl(
      null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as CharacterSortOrder,
    ));
  }
}

/// @nodoc

class _$SortCharactersImpl implements _SortCharacters {
  const _$SortCharactersImpl(this.order);

  @override
  final CharacterSortOrder order;

  @override
  String toString() {
    return 'FavoritesEvent.sortCharacters(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortCharactersImpl &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SortCharactersImplCopyWith<_$SortCharactersImpl> get copyWith =>
      __$$SortCharactersImplCopyWithImpl<_$SortCharactersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFavorites,
    required TResult Function(CharacterEntity character) addFavorite,
    required TResult Function(int id) removeFavorite,
    required TResult Function(CharacterSortOrder order) sortCharacters,
    required TResult Function() fetchFavoritesIds,
  }) {
    return sortCharacters(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFavorites,
    TResult? Function(CharacterEntity character)? addFavorite,
    TResult? Function(int id)? removeFavorite,
    TResult? Function(CharacterSortOrder order)? sortCharacters,
    TResult? Function()? fetchFavoritesIds,
  }) {
    return sortCharacters?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFavorites,
    TResult Function(CharacterEntity character)? addFavorite,
    TResult Function(int id)? removeFavorite,
    TResult Function(CharacterSortOrder order)? sortCharacters,
    TResult Function()? fetchFavoritesIds,
    required TResult orElse(),
  }) {
    if (sortCharacters != null) {
      return sortCharacters(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFavorites value) fetchFavorites,
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
    required TResult Function(_SortCharacters value) sortCharacters,
    required TResult Function(_FetchFavoritesIds value) fetchFavoritesIds,
  }) {
    return sortCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFavorites value)? fetchFavorites,
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
    TResult? Function(_SortCharacters value)? sortCharacters,
    TResult? Function(_FetchFavoritesIds value)? fetchFavoritesIds,
  }) {
    return sortCharacters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFavorites value)? fetchFavorites,
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    TResult Function(_SortCharacters value)? sortCharacters,
    TResult Function(_FetchFavoritesIds value)? fetchFavoritesIds,
    required TResult orElse(),
  }) {
    if (sortCharacters != null) {
      return sortCharacters(this);
    }
    return orElse();
  }
}

abstract class _SortCharacters implements FavoritesEvent {
  const factory _SortCharacters(final CharacterSortOrder order) =
      _$SortCharactersImpl;

  CharacterSortOrder get order;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SortCharactersImplCopyWith<_$SortCharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchFavoritesIdsImplCopyWith<$Res> {
  factory _$$FetchFavoritesIdsImplCopyWith(_$FetchFavoritesIdsImpl value,
          $Res Function(_$FetchFavoritesIdsImpl) then) =
      __$$FetchFavoritesIdsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchFavoritesIdsImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$FetchFavoritesIdsImpl>
    implements _$$FetchFavoritesIdsImplCopyWith<$Res> {
  __$$FetchFavoritesIdsImplCopyWithImpl(_$FetchFavoritesIdsImpl _value,
      $Res Function(_$FetchFavoritesIdsImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchFavoritesIdsImpl implements _FetchFavoritesIds {
  const _$FetchFavoritesIdsImpl();

  @override
  String toString() {
    return 'FavoritesEvent.fetchFavoritesIds()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchFavoritesIdsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchFavorites,
    required TResult Function(CharacterEntity character) addFavorite,
    required TResult Function(int id) removeFavorite,
    required TResult Function(CharacterSortOrder order) sortCharacters,
    required TResult Function() fetchFavoritesIds,
  }) {
    return fetchFavoritesIds();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchFavorites,
    TResult? Function(CharacterEntity character)? addFavorite,
    TResult? Function(int id)? removeFavorite,
    TResult? Function(CharacterSortOrder order)? sortCharacters,
    TResult? Function()? fetchFavoritesIds,
  }) {
    return fetchFavoritesIds?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchFavorites,
    TResult Function(CharacterEntity character)? addFavorite,
    TResult Function(int id)? removeFavorite,
    TResult Function(CharacterSortOrder order)? sortCharacters,
    TResult Function()? fetchFavoritesIds,
    required TResult orElse(),
  }) {
    if (fetchFavoritesIds != null) {
      return fetchFavoritesIds();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchFavorites value) fetchFavorites,
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
    required TResult Function(_SortCharacters value) sortCharacters,
    required TResult Function(_FetchFavoritesIds value) fetchFavoritesIds,
  }) {
    return fetchFavoritesIds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchFavorites value)? fetchFavorites,
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
    TResult? Function(_SortCharacters value)? sortCharacters,
    TResult? Function(_FetchFavoritesIds value)? fetchFavoritesIds,
  }) {
    return fetchFavoritesIds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchFavorites value)? fetchFavorites,
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    TResult Function(_SortCharacters value)? sortCharacters,
    TResult Function(_FetchFavoritesIds value)? fetchFavoritesIds,
    required TResult orElse(),
  }) {
    if (fetchFavoritesIds != null) {
      return fetchFavoritesIds(this);
    }
    return orElse();
  }
}

abstract class _FetchFavoritesIds implements FavoritesEvent {
  const factory _FetchFavoritesIds() = _$FetchFavoritesIdsImpl;
}

/// @nodoc
mixin _$FavoritesState {
  StateStatus get status => throw _privateConstructorUsedError;
  Set<int> get favoriteIds => throw _privateConstructorUsedError;
  List<CharacterEntity> get favorites => throw _privateConstructorUsedError;
  CharacterSortOrder get sortOrder => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoritesStateCopyWith<FavoritesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res, FavoritesState>;
  @useResult
  $Res call(
      {StateStatus status,
      Set<int> favoriteIds,
      List<CharacterEntity> favorites,
      CharacterSortOrder sortOrder,
      Failure? failure});
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res, $Val extends FavoritesState>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? favoriteIds = null,
    Object? favorites = null,
    Object? sortOrder = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      favoriteIds: null == favoriteIds
          ? _value.favoriteIds
          : favoriteIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<CharacterEntity>,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as CharacterSortOrder,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoritesStateImplCopyWith<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  factory _$$FavoritesStateImplCopyWith(_$FavoritesStateImpl value,
          $Res Function(_$FavoritesStateImpl) then) =
      __$$FavoritesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus status,
      Set<int> favoriteIds,
      List<CharacterEntity> favorites,
      CharacterSortOrder sortOrder,
      Failure? failure});
}

/// @nodoc
class __$$FavoritesStateImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesStateImpl>
    implements _$$FavoritesStateImplCopyWith<$Res> {
  __$$FavoritesStateImplCopyWithImpl(
      _$FavoritesStateImpl _value, $Res Function(_$FavoritesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? favoriteIds = null,
    Object? favorites = null,
    Object? sortOrder = null,
    Object? failure = freezed,
  }) {
    return _then(_$FavoritesStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      favoriteIds: null == favoriteIds
          ? _value._favoriteIds
          : favoriteIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<CharacterEntity>,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as CharacterSortOrder,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$FavoritesStateImpl implements _FavoritesState {
  _$FavoritesStateImpl(
      {this.status = StateStatus.initial,
      final Set<int> favoriteIds = const <int>{},
      final List<CharacterEntity> favorites = const <CharacterEntity>[],
      this.sortOrder = CharacterSortOrder.nameAsc,
      this.failure})
      : _favoriteIds = favoriteIds,
        _favorites = favorites;

  @override
  @JsonKey()
  final StateStatus status;
  final Set<int> _favoriteIds;
  @override
  @JsonKey()
  Set<int> get favoriteIds {
    if (_favoriteIds is EqualUnmodifiableSetView) return _favoriteIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_favoriteIds);
  }

  final List<CharacterEntity> _favorites;
  @override
  @JsonKey()
  List<CharacterEntity> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  @JsonKey()
  final CharacterSortOrder sortOrder;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'FavoritesState(status: $status, favoriteIds: $favoriteIds, favorites: $favorites, sortOrder: $sortOrder, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._favoriteIds, _favoriteIds) &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_favoriteIds),
      const DeepCollectionEquality().hash(_favorites),
      sortOrder,
      failure);

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesStateImplCopyWith<_$FavoritesStateImpl> get copyWith =>
      __$$FavoritesStateImplCopyWithImpl<_$FavoritesStateImpl>(
          this, _$identity);
}

abstract class _FavoritesState implements FavoritesState {
  factory _FavoritesState(
      {final StateStatus status,
      final Set<int> favoriteIds,
      final List<CharacterEntity> favorites,
      final CharacterSortOrder sortOrder,
      final Failure? failure}) = _$FavoritesStateImpl;

  @override
  StateStatus get status;
  @override
  Set<int> get favoriteIds;
  @override
  List<CharacterEntity> get favorites;
  @override
  CharacterSortOrder get sortOrder;
  @override
  Failure? get failure;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoritesStateImplCopyWith<_$FavoritesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
