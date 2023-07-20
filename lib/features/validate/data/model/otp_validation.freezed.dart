// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_validation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OtpValidation _$OtpValidationFromJson(Map<String, dynamic> json) {
  return _OtpValidation.fromJson(json);
}

/// @nodoc
mixin _$OtpValidation {
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  int? get otp => throw _privateConstructorUsedError;
  String? get app => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_type')
  String? get deviceType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtpValidationCopyWith<OtpValidation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpValidationCopyWith<$Res> {
  factory $OtpValidationCopyWith(
          OtpValidation value, $Res Function(OtpValidation) then) =
      _$OtpValidationCopyWithImpl<$Res, OtpValidation>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int? userId,
      int? otp,
      String? app,
      @JsonKey(name: 'device_type') String? deviceType});
}

/// @nodoc
class _$OtpValidationCopyWithImpl<$Res, $Val extends OtpValidation>
    implements $OtpValidationCopyWith<$Res> {
  _$OtpValidationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? otp = freezed,
    Object? app = freezed,
    Object? deviceType = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
      app: freezed == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceType: freezed == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OtpValidationCopyWith<$Res>
    implements $OtpValidationCopyWith<$Res> {
  factory _$$_OtpValidationCopyWith(
          _$_OtpValidation value, $Res Function(_$_OtpValidation) then) =
      __$$_OtpValidationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int? userId,
      int? otp,
      String? app,
      @JsonKey(name: 'device_type') String? deviceType});
}

/// @nodoc
class __$$_OtpValidationCopyWithImpl<$Res>
    extends _$OtpValidationCopyWithImpl<$Res, _$_OtpValidation>
    implements _$$_OtpValidationCopyWith<$Res> {
  __$$_OtpValidationCopyWithImpl(
      _$_OtpValidation _value, $Res Function(_$_OtpValidation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? otp = freezed,
    Object? app = freezed,
    Object? deviceType = freezed,
  }) {
    return _then(_$_OtpValidation(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
      app: freezed == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceType: freezed == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OtpValidation implements _OtpValidation {
  const _$_OtpValidation(
      {@JsonKey(name: 'user_id') required this.userId,
      required this.otp,
      required this.app,
      @JsonKey(name: 'device_type') required this.deviceType});

  factory _$_OtpValidation.fromJson(Map<String, dynamic> json) =>
      _$$_OtpValidationFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  final int? otp;
  @override
  final String? app;
  @override
  @JsonKey(name: 'device_type')
  final String? deviceType;

  @override
  String toString() {
    return 'OtpValidation(userId: $userId, otp: $otp, app: $app, deviceType: $deviceType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpValidation &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.app, app) || other.app == app) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, otp, app, deviceType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtpValidationCopyWith<_$_OtpValidation> get copyWith =>
      __$$_OtpValidationCopyWithImpl<_$_OtpValidation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OtpValidationToJson(
      this,
    );
  }
}

abstract class _OtpValidation implements OtpValidation {
  const factory _OtpValidation(
          {@JsonKey(name: 'user_id') required final int? userId,
          required final int? otp,
          required final String? app,
          @JsonKey(name: 'device_type') required final String? deviceType}) =
      _$_OtpValidation;

  factory _OtpValidation.fromJson(Map<String, dynamic> json) =
      _$_OtpValidation.fromJson;

  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  int? get otp;
  @override
  String? get app;
  @override
  @JsonKey(name: 'device_type')
  String? get deviceType;
  @override
  @JsonKey(ignore: true)
  _$$_OtpValidationCopyWith<_$_OtpValidation> get copyWith =>
      throw _privateConstructorUsedError;
}
