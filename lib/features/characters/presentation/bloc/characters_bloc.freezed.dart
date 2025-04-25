// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharactersEvent {
  String? get status => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? status, String? gender, String? name, int? page)
        fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? status, String? gender, String? name, int? page)?
        fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? status, String? gender, String? name, int? page)?
        fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCharacters value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCharacters value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCharacters value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharactersEventCopyWith<CharactersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersEventCopyWith<$Res> {
  factory $CharactersEventCopyWith(
          CharactersEvent value, $Res Function(CharactersEvent) then) =
      _$CharactersEventCopyWithImpl<$Res, CharactersEvent>;
  @useResult
  $Res call({String? status, String? gender, String? name, int? page});
}

/// @nodoc
class _$CharactersEventCopyWithImpl<$Res, $Val extends CharactersEvent>
    implements $CharactersEventCopyWith<$Res> {
  _$CharactersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? gender = freezed,
    Object? name = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchCharactersImplCopyWith<$Res>
    implements $CharactersEventCopyWith<$Res> {
  factory _$$FetchCharactersImplCopyWith(_$FetchCharactersImpl value,
          $Res Function(_$FetchCharactersImpl) then) =
      __$$FetchCharactersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? gender, String? name, int? page});
}

/// @nodoc
class __$$FetchCharactersImplCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res, _$FetchCharactersImpl>
    implements _$$FetchCharactersImplCopyWith<$Res> {
  __$$FetchCharactersImplCopyWithImpl(
      _$FetchCharactersImpl _value, $Res Function(_$FetchCharactersImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? gender = freezed,
    Object? name = freezed,
    Object? page = freezed,
  }) {
    return _then(_$FetchCharactersImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FetchCharactersImpl implements _FetchCharacters {
  const _$FetchCharactersImpl({this.status, this.gender, this.name, this.page});

  @override
  final String? status;
  @override
  final String? gender;
  @override
  final String? name;
  @override
  final int? page;

  @override
  String toString() {
    return 'CharactersEvent.fetch(status: $status, gender: $gender, name: $name, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCharactersImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, gender, name, page);

  /// Create a copy of CharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCharactersImplCopyWith<_$FetchCharactersImpl> get copyWith =>
      __$$FetchCharactersImplCopyWithImpl<_$FetchCharactersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? status, String? gender, String? name, int? page)
        fetch,
  }) {
    return fetch(status, gender, name, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? status, String? gender, String? name, int? page)?
        fetch,
  }) {
    return fetch?.call(status, gender, name, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? status, String? gender, String? name, int? page)?
        fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(status, gender, name, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCharacters value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCharacters value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCharacters value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _FetchCharacters implements CharactersEvent {
  const factory _FetchCharacters(
      {final String? status,
      final String? gender,
      final String? name,
      final int? page}) = _$FetchCharactersImpl;

  @override
  String? get status;
  @override
  String? get gender;
  @override
  String? get name;
  @override
  int? get page;

  /// Create a copy of CharactersEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchCharactersImplCopyWith<_$FetchCharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharactersState {
  StateStatus get status => throw _privateConstructorUsedError;
  FilterEntity get currentFilter =>
      throw _privateConstructorUsedError; // @Default('') String searchQuery,
// @Default(<int>{}) Set<int> favoriteIds,
  List<CharacterEntity> get characters =>
      throw _privateConstructorUsedError; // @Default(<CharacterEntity>[]) List<CharacterEntity> visibleCharacters,
  Failure? get failure => throw _privateConstructorUsedError;

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharactersStateCopyWith<CharactersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersStateCopyWith<$Res> {
  factory $CharactersStateCopyWith(
          CharactersState value, $Res Function(CharactersState) then) =
      _$CharactersStateCopyWithImpl<$Res, CharactersState>;
  @useResult
  $Res call(
      {StateStatus status,
      FilterEntity currentFilter,
      List<CharacterEntity> characters,
      Failure? failure});
}

/// @nodoc
class _$CharactersStateCopyWithImpl<$Res, $Val extends CharactersState>
    implements $CharactersStateCopyWith<$Res> {
  _$CharactersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentFilter = null,
    Object? characters = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      currentFilter: null == currentFilter
          ? _value.currentFilter
          : currentFilter // ignore: cast_nullable_to_non_nullable
              as FilterEntity,
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterEntity>,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharactersStateImplCopyWith<$Res>
    implements $CharactersStateCopyWith<$Res> {
  factory _$$CharactersStateImplCopyWith(_$CharactersStateImpl value,
          $Res Function(_$CharactersStateImpl) then) =
      __$$CharactersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateStatus status,
      FilterEntity currentFilter,
      List<CharacterEntity> characters,
      Failure? failure});
}

/// @nodoc
class __$$CharactersStateImplCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$CharactersStateImpl>
    implements _$$CharactersStateImplCopyWith<$Res> {
  __$$CharactersStateImplCopyWithImpl(
      _$CharactersStateImpl _value, $Res Function(_$CharactersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentFilter = null,
    Object? characters = null,
    Object? failure = freezed,
  }) {
    return _then(_$CharactersStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      currentFilter: null == currentFilter
          ? _value.currentFilter
          : currentFilter // ignore: cast_nullable_to_non_nullable
              as FilterEntity,
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterEntity>,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$CharactersStateImpl implements _CharactersState {
  _$CharactersStateImpl(
      {this.status = StateStatus.initial,
      this.currentFilter = const FilterEntity(gender: null, liveStatus: null),
      final List<CharacterEntity> characters = const <CharacterEntity>[],
      this.failure})
      : _characters = characters;

  @override
  @JsonKey()
  final StateStatus status;
  @override
  @JsonKey()
  final FilterEntity currentFilter;
// @Default('') String searchQuery,
// @Default(<int>{}) Set<int> favoriteIds,
  final List<CharacterEntity> _characters;
// @Default('') String searchQuery,
// @Default(<int>{}) Set<int> favoriteIds,
  @override
  @JsonKey()
  List<CharacterEntity> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

// @Default(<CharacterEntity>[]) List<CharacterEntity> visibleCharacters,
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'CharactersState(status: $status, currentFilter: $currentFilter, characters: $characters, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentFilter, currentFilter) ||
                other.currentFilter == currentFilter) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, currentFilter,
      const DeepCollectionEquality().hash(_characters), failure);

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersStateImplCopyWith<_$CharactersStateImpl> get copyWith =>
      __$$CharactersStateImplCopyWithImpl<_$CharactersStateImpl>(
          this, _$identity);
}

abstract class _CharactersState implements CharactersState {
  factory _CharactersState(
      {final StateStatus status,
      final FilterEntity currentFilter,
      final List<CharacterEntity> characters,
      final Failure? failure}) = _$CharactersStateImpl;

  @override
  StateStatus get status;
  @override
  FilterEntity get currentFilter; // @Default('') String searchQuery,
// @Default(<int>{}) Set<int> favoriteIds,
  @override
  List<CharacterEntity>
      get characters; // @Default(<CharacterEntity>[]) List<CharacterEntity> visibleCharacters,
  @override
  Failure? get failure;

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharactersStateImplCopyWith<_$CharactersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
