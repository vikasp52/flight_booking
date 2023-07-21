// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_in_searching_flight.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorInFlightSearch _$ErrorInFlightSearchFromJson(Map<String, dynamic> json) {
  return _ErrorInFlightSearch.fromJson(json);
}

/// @nodoc
mixin _$ErrorInFlightSearch {
  bool? get status => throw _privateConstructorUsedError;
  Message? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorInFlightSearchCopyWith<ErrorInFlightSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorInFlightSearchCopyWith<$Res> {
  factory $ErrorInFlightSearchCopyWith(
          ErrorInFlightSearch value, $Res Function(ErrorInFlightSearch) then) =
      _$ErrorInFlightSearchCopyWithImpl<$Res, ErrorInFlightSearch>;
  @useResult
  $Res call({bool? status, Message? message});

  $MessageCopyWith<$Res>? get message;
}

/// @nodoc
class _$ErrorInFlightSearchCopyWithImpl<$Res, $Val extends ErrorInFlightSearch>
    implements $ErrorInFlightSearchCopyWith<$Res> {
  _$ErrorInFlightSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $MessageCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ErrorInFlightSearchCopyWith<$Res>
    implements $ErrorInFlightSearchCopyWith<$Res> {
  factory _$$_ErrorInFlightSearchCopyWith(_$_ErrorInFlightSearch value,
          $Res Function(_$_ErrorInFlightSearch) then) =
      __$$_ErrorInFlightSearchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, Message? message});

  @override
  $MessageCopyWith<$Res>? get message;
}

/// @nodoc
class __$$_ErrorInFlightSearchCopyWithImpl<$Res>
    extends _$ErrorInFlightSearchCopyWithImpl<$Res, _$_ErrorInFlightSearch>
    implements _$$_ErrorInFlightSearchCopyWith<$Res> {
  __$$_ErrorInFlightSearchCopyWithImpl(_$_ErrorInFlightSearch _value,
      $Res Function(_$_ErrorInFlightSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ErrorInFlightSearch(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorInFlightSearch implements _ErrorInFlightSearch {
  const _$_ErrorInFlightSearch({this.status, this.message});

  factory _$_ErrorInFlightSearch.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorInFlightSearchFromJson(json);

  @override
  final bool? status;
  @override
  final Message? message;

  @override
  String toString() {
    return 'ErrorInFlightSearch(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorInFlightSearch &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorInFlightSearchCopyWith<_$_ErrorInFlightSearch> get copyWith =>
      __$$_ErrorInFlightSearchCopyWithImpl<_$_ErrorInFlightSearch>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorInFlightSearchToJson(
      this,
    );
  }
}

abstract class _ErrorInFlightSearch implements ErrorInFlightSearch {
  const factory _ErrorInFlightSearch(
      {final bool? status, final Message? message}) = _$_ErrorInFlightSearch;

  factory _ErrorInFlightSearch.fromJson(Map<String, dynamic> json) =
      _$_ErrorInFlightSearch.fromJson;

  @override
  bool? get status;
  @override
  Message? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorInFlightSearchCopyWith<_$_ErrorInFlightSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  List<String>? get journeyType => throw _privateConstructorUsedError;
  @JsonKey(name: 'class')
  List<String>? get journeyClass => throw _privateConstructorUsedError;
  @JsonKey(name: 'OriginDestinationInfo')
  List<String>? get originDestinationInfo => throw _privateConstructorUsedError;
  List<String>? get adults => throw _privateConstructorUsedError;
  List<String>? get originDestinationInfo0AirportOriginCode =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {List<String>? journeyType,
      @JsonKey(name: 'class') List<String>? journeyClass,
      @JsonKey(name: 'OriginDestinationInfo')
      List<String>? originDestinationInfo,
      List<String>? adults,
      List<String>? originDestinationInfo0AirportOriginCode});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? journeyType = freezed,
    Object? journeyClass = freezed,
    Object? originDestinationInfo = freezed,
    Object? adults = freezed,
    Object? originDestinationInfo0AirportOriginCode = freezed,
  }) {
    return _then(_value.copyWith(
      journeyType: freezed == journeyType
          ? _value.journeyType
          : journeyType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      journeyClass: freezed == journeyClass
          ? _value.journeyClass
          : journeyClass // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      originDestinationInfo: freezed == originDestinationInfo
          ? _value.originDestinationInfo
          : originDestinationInfo // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      adults: freezed == adults
          ? _value.adults
          : adults // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      originDestinationInfo0AirportOriginCode: freezed ==
              originDestinationInfo0AirportOriginCode
          ? _value.originDestinationInfo0AirportOriginCode
          : originDestinationInfo0AirportOriginCode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? journeyType,
      @JsonKey(name: 'class') List<String>? journeyClass,
      @JsonKey(name: 'OriginDestinationInfo')
      List<String>? originDestinationInfo,
      List<String>? adults,
      List<String>? originDestinationInfo0AirportOriginCode});
}

/// @nodoc
class __$$_MessageCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$_Message>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? journeyType = freezed,
    Object? journeyClass = freezed,
    Object? originDestinationInfo = freezed,
    Object? adults = freezed,
    Object? originDestinationInfo0AirportOriginCode = freezed,
  }) {
    return _then(_$_Message(
      journeyType: freezed == journeyType
          ? _value._journeyType
          : journeyType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      journeyClass: freezed == journeyClass
          ? _value._journeyClass
          : journeyClass // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      originDestinationInfo: freezed == originDestinationInfo
          ? _value._originDestinationInfo
          : originDestinationInfo // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      adults: freezed == adults
          ? _value._adults
          : adults // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      originDestinationInfo0AirportOriginCode: freezed ==
              originDestinationInfo0AirportOriginCode
          ? _value._originDestinationInfo0AirportOriginCode
          : originDestinationInfo0AirportOriginCode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Message implements _Message {
  const _$_Message(
      {final List<String>? journeyType,
      @JsonKey(name: 'class') final List<String>? journeyClass,
      @JsonKey(name: 'OriginDestinationInfo')
      final List<String>? originDestinationInfo,
      final List<String>? adults,
      final List<String>? originDestinationInfo0AirportOriginCode})
      : _journeyType = journeyType,
        _journeyClass = journeyClass,
        _originDestinationInfo = originDestinationInfo,
        _adults = adults,
        _originDestinationInfo0AirportOriginCode =
            originDestinationInfo0AirportOriginCode;

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromJson(json);

  final List<String>? _journeyType;
  @override
  List<String>? get journeyType {
    final value = _journeyType;
    if (value == null) return null;
    if (_journeyType is EqualUnmodifiableListView) return _journeyType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _journeyClass;
  @override
  @JsonKey(name: 'class')
  List<String>? get journeyClass {
    final value = _journeyClass;
    if (value == null) return null;
    if (_journeyClass is EqualUnmodifiableListView) return _journeyClass;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _originDestinationInfo;
  @override
  @JsonKey(name: 'OriginDestinationInfo')
  List<String>? get originDestinationInfo {
    final value = _originDestinationInfo;
    if (value == null) return null;
    if (_originDestinationInfo is EqualUnmodifiableListView)
      return _originDestinationInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _adults;
  @override
  List<String>? get adults {
    final value = _adults;
    if (value == null) return null;
    if (_adults is EqualUnmodifiableListView) return _adults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _originDestinationInfo0AirportOriginCode;
  @override
  List<String>? get originDestinationInfo0AirportOriginCode {
    final value = _originDestinationInfo0AirportOriginCode;
    if (value == null) return null;
    if (_originDestinationInfo0AirportOriginCode is EqualUnmodifiableListView)
      return _originDestinationInfo0AirportOriginCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Message(journeyType: $journeyType, journeyClass: $journeyClass, originDestinationInfo: $originDestinationInfo, adults: $adults, originDestinationInfo0AirportOriginCode: $originDestinationInfo0AirportOriginCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Message &&
            const DeepCollectionEquality()
                .equals(other._journeyType, _journeyType) &&
            const DeepCollectionEquality()
                .equals(other._journeyClass, _journeyClass) &&
            const DeepCollectionEquality()
                .equals(other._originDestinationInfo, _originDestinationInfo) &&
            const DeepCollectionEquality().equals(other._adults, _adults) &&
            const DeepCollectionEquality().equals(
                other._originDestinationInfo0AirportOriginCode,
                _originDestinationInfo0AirportOriginCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_journeyType),
      const DeepCollectionEquality().hash(_journeyClass),
      const DeepCollectionEquality().hash(_originDestinationInfo),
      const DeepCollectionEquality().hash(_adults),
      const DeepCollectionEquality()
          .hash(_originDestinationInfo0AirportOriginCode));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      __$$_MessageCopyWithImpl<_$_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message(
          {final List<String>? journeyType,
          @JsonKey(name: 'class') final List<String>? journeyClass,
          @JsonKey(name: 'OriginDestinationInfo')
          final List<String>? originDestinationInfo,
          final List<String>? adults,
          final List<String>? originDestinationInfo0AirportOriginCode}) =
      _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  List<String>? get journeyType;
  @override
  @JsonKey(name: 'class')
  List<String>? get journeyClass;
  @override
  @JsonKey(name: 'OriginDestinationInfo')
  List<String>? get originDestinationInfo;
  @override
  List<String>? get adults;
  @override
  List<String>? get originDestinationInfo0AirportOriginCode;
  @override
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      throw _privateConstructorUsedError;
}
