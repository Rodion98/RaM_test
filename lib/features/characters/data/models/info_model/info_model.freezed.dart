// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InfoModel _$InfoModelFromJson(Map<String, dynamic> json) {
  return _InfoModel.fromJson(json);
}

/// @nodoc
mixin _$InfoModel {
  int? get count => throw _privateConstructorUsedError;
  int? get pages => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get prev => throw _privateConstructorUsedError;

  /// Serializes this InfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InfoModelCopyWith<InfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoModelCopyWith<$Res> {
  factory $InfoModelCopyWith(InfoModel value, $Res Function(InfoModel) then) =
      _$InfoModelCopyWithImpl<$Res, InfoModel>;
  @useResult
  $Res call({int? count, int? pages, String? next, String? prev});
}

/// @nodoc
class _$InfoModelCopyWithImpl<$Res, $Val extends InfoModel>
    implements $InfoModelCopyWith<$Res> {
  _$InfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? pages = freezed,
    Object? next = freezed,
    Object? prev = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfoModelImplCopyWith<$Res>
    implements $InfoModelCopyWith<$Res> {
  factory _$$InfoModelImplCopyWith(
          _$InfoModelImpl value, $Res Function(_$InfoModelImpl) then) =
      __$$InfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, int? pages, String? next, String? prev});
}

/// @nodoc
class __$$InfoModelImplCopyWithImpl<$Res>
    extends _$InfoModelCopyWithImpl<$Res, _$InfoModelImpl>
    implements _$$InfoModelImplCopyWith<$Res> {
  __$$InfoModelImplCopyWithImpl(
      _$InfoModelImpl _value, $Res Function(_$InfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of InfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? pages = freezed,
    Object? next = freezed,
    Object? prev = freezed,
  }) {
    return _then(_$InfoModelImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoModelImpl implements _InfoModel {
  const _$InfoModelImpl({this.count, this.pages, this.next, this.prev});

  factory _$InfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfoModelImplFromJson(json);

  @override
  final int? count;
  @override
  final int? pages;
  @override
  final String? next;
  @override
  final String? prev;

  @override
  String toString() {
    return 'InfoModel(count: $count, pages: $pages, next: $next, prev: $prev)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoModelImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.prev, prev) || other.prev == prev));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, pages, next, prev);

  /// Create a copy of InfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoModelImplCopyWith<_$InfoModelImpl> get copyWith =>
      __$$InfoModelImplCopyWithImpl<_$InfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InfoModelImplToJson(
      this,
    );
  }
}

abstract class _InfoModel implements InfoModel {
  const factory _InfoModel(
      {final int? count,
      final int? pages,
      final String? next,
      final String? prev}) = _$InfoModelImpl;

  factory _InfoModel.fromJson(Map<String, dynamic> json) =
      _$InfoModelImpl.fromJson;

  @override
  int? get count;
  @override
  int? get pages;
  @override
  String? get next;
  @override
  String? get prev;

  /// Create a copy of InfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfoModelImplCopyWith<_$InfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
