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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
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
}

/// @nodoc
abstract class $CharactersEventCopyWith<$Res> {
  factory $CharactersEventCopyWith(
          CharactersEvent value, $Res Function(CharactersEvent) then) =
      _$CharactersEventCopyWithImpl<$Res, CharactersEvent>;
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
}

/// @nodoc
abstract class _$$FetchCharactersImplCopyWith<$Res> {
  factory _$$FetchCharactersImplCopyWith(_$FetchCharactersImpl value,
          $Res Function(_$FetchCharactersImpl) then) =
      __$$FetchCharactersImplCopyWithImpl<$Res>;
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
}

/// @nodoc

class _$FetchCharactersImpl implements _FetchCharacters {
  const _$FetchCharactersImpl();

  @override
  String toString() {
    return 'CharactersEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchCharactersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
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
  const factory _FetchCharacters() = _$FetchCharactersImpl;
}

/// @nodoc
mixin _$CharactersState {
  StateStatus get status => throw _privateConstructorUsedError;
  List<CharacterEntity> get characters => throw _privateConstructorUsedError;
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
      {StateStatus status, List<CharacterEntity> characters, Failure? failure});
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
    Object? characters = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
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
      {StateStatus status, List<CharacterEntity> characters, Failure? failure});
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
    Object? characters = null,
    Object? failure = freezed,
  }) {
    return _then(_$CharactersStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus,
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
      final List<CharacterEntity> characters = const <CharacterEntity>[],
      this.failure})
      : _characters = characters;

  @override
  @JsonKey()
  final StateStatus status;
  final List<CharacterEntity> _characters;
  @override
  @JsonKey()
  List<CharacterEntity> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  final Failure? failure;

  @override
  String toString() {
    return 'CharactersState(status: $status, characters: $characters, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
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
      final List<CharacterEntity> characters,
      final Failure? failure}) = _$CharactersStateImpl;

  @override
  StateStatus get status;
  @override
  List<CharacterEntity> get characters;
  @override
  Failure? get failure;

  /// Create a copy of CharactersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharactersStateImplCopyWith<_$CharactersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
