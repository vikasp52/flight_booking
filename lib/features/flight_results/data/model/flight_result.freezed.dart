// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flight_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlightResult _$FlightResultFromJson(Map<String, dynamic> json) {
  return _FlightResult.fromJson(json);
}

/// @nodoc
mixin _$FlightResult {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlightResultCopyWith<FlightResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlightResultCopyWith<$Res> {
  factory $FlightResultCopyWith(
          FlightResult value, $Res Function(FlightResult) then) =
      _$FlightResultCopyWithImpl<$Res, FlightResult>;
  @useResult
  $Res call({bool? status, String? message, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$FlightResultCopyWithImpl<$Res, $Val extends FlightResult>
    implements $FlightResultCopyWith<$Res> {
  _$FlightResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FlightResultCopyWith<$Res>
    implements $FlightResultCopyWith<$Res> {
  factory _$$_FlightResultCopyWith(
          _$_FlightResult value, $Res Function(_$_FlightResult) then) =
      __$$_FlightResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, String? message, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_FlightResultCopyWithImpl<$Res>
    extends _$FlightResultCopyWithImpl<$Res, _$_FlightResult>
    implements _$$_FlightResultCopyWith<$Res> {
  __$$_FlightResultCopyWithImpl(
      _$_FlightResult _value, $Res Function(_$_FlightResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_FlightResult(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FlightResult implements _FlightResult {
  const _$_FlightResult({this.status, this.message, this.data});

  factory _$_FlightResult.fromJson(Map<String, dynamic> json) =>
      _$$_FlightResultFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;
  @override
  final Data? data;

  @override
  String toString() {
    return 'FlightResult(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlightResult &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlightResultCopyWith<_$_FlightResult> get copyWith =>
      __$$_FlightResultCopyWithImpl<_$_FlightResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FlightResultToJson(
      this,
    );
  }
}

abstract class _FlightResult implements FlightResult {
  const factory _FlightResult(
      {final bool? status,
      final String? message,
      final Data? data}) = _$_FlightResult;

  factory _FlightResult.fromJson(Map<String, dynamic> json) =
      _$_FlightResult.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$_FlightResultCopyWith<_$_FlightResult> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get sessionId => throw _privateConstructorUsedError;
  List<Flights>? get flights => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({String? sessionId, List<Flights>? flights});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
    Object? flights = freezed,
  }) {
    return _then(_value.copyWith(
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      flights: freezed == flights
          ? _value.flights
          : flights // ignore: cast_nullable_to_non_nullable
              as List<Flights>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? sessionId, List<Flights>? flights});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
    Object? flights = freezed,
  }) {
    return _then(_$_Data(
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      flights: freezed == flights
          ? _value._flights
          : flights // ignore: cast_nullable_to_non_nullable
              as List<Flights>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data({this.sessionId, final List<Flights>? flights})
      : _flights = flights;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String? sessionId;
  final List<Flights>? _flights;
  @override
  List<Flights>? get flights {
    final value = _flights;
    if (value == null) return null;
    if (_flights is EqualUnmodifiableListView) return _flights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(sessionId: $sessionId, flights: $flights)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            const DeepCollectionEquality().equals(other._flights, _flights));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, sessionId, const DeepCollectionEquality().hash(_flights));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data({final String? sessionId, final List<Flights>? flights}) =
      _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String? get sessionId;
  @override
  List<Flights>? get flights;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

Flights _$FlightsFromJson(Map<String, dynamic> json) {
  return _Flights.fromJson(json);
}

/// @nodoc
mixin _$Flights {
  List<OriginDestinationOptions>? get originDestinationOptions =>
      throw _privateConstructorUsedError;
  FareTotal? get fareTotal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlightsCopyWith<Flights> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlightsCopyWith<$Res> {
  factory $FlightsCopyWith(Flights value, $Res Function(Flights) then) =
      _$FlightsCopyWithImpl<$Res, Flights>;
  @useResult
  $Res call(
      {List<OriginDestinationOptions>? originDestinationOptions,
      FareTotal? fareTotal});

  $FareTotalCopyWith<$Res>? get fareTotal;
}

/// @nodoc
class _$FlightsCopyWithImpl<$Res, $Val extends Flights>
    implements $FlightsCopyWith<$Res> {
  _$FlightsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originDestinationOptions = freezed,
    Object? fareTotal = freezed,
  }) {
    return _then(_value.copyWith(
      originDestinationOptions: freezed == originDestinationOptions
          ? _value.originDestinationOptions
          : originDestinationOptions // ignore: cast_nullable_to_non_nullable
              as List<OriginDestinationOptions>?,
      fareTotal: freezed == fareTotal
          ? _value.fareTotal
          : fareTotal // ignore: cast_nullable_to_non_nullable
              as FareTotal?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FareTotalCopyWith<$Res>? get fareTotal {
    if (_value.fareTotal == null) {
      return null;
    }

    return $FareTotalCopyWith<$Res>(_value.fareTotal!, (value) {
      return _then(_value.copyWith(fareTotal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FlightsCopyWith<$Res> implements $FlightsCopyWith<$Res> {
  factory _$$_FlightsCopyWith(
          _$_Flights value, $Res Function(_$_Flights) then) =
      __$$_FlightsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<OriginDestinationOptions>? originDestinationOptions,
      FareTotal? fareTotal});

  @override
  $FareTotalCopyWith<$Res>? get fareTotal;
}

/// @nodoc
class __$$_FlightsCopyWithImpl<$Res>
    extends _$FlightsCopyWithImpl<$Res, _$_Flights>
    implements _$$_FlightsCopyWith<$Res> {
  __$$_FlightsCopyWithImpl(_$_Flights _value, $Res Function(_$_Flights) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originDestinationOptions = freezed,
    Object? fareTotal = freezed,
  }) {
    return _then(_$_Flights(
      originDestinationOptions: freezed == originDestinationOptions
          ? _value._originDestinationOptions
          : originDestinationOptions // ignore: cast_nullable_to_non_nullable
              as List<OriginDestinationOptions>?,
      fareTotal: freezed == fareTotal
          ? _value.fareTotal
          : fareTotal // ignore: cast_nullable_to_non_nullable
              as FareTotal?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Flights implements _Flights {
  const _$_Flights(
      {final List<OriginDestinationOptions>? originDestinationOptions,
      this.fareTotal})
      : _originDestinationOptions = originDestinationOptions;

  factory _$_Flights.fromJson(Map<String, dynamic> json) =>
      _$$_FlightsFromJson(json);

  final List<OriginDestinationOptions>? _originDestinationOptions;
  @override
  List<OriginDestinationOptions>? get originDestinationOptions {
    final value = _originDestinationOptions;
    if (value == null) return null;
    if (_originDestinationOptions is EqualUnmodifiableListView)
      return _originDestinationOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FareTotal? fareTotal;

  @override
  String toString() {
    return 'Flights(originDestinationOptions: $originDestinationOptions, fareTotal: $fareTotal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Flights &&
            const DeepCollectionEquality().equals(
                other._originDestinationOptions, _originDestinationOptions) &&
            (identical(other.fareTotal, fareTotal) ||
                other.fareTotal == fareTotal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_originDestinationOptions),
      fareTotal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlightsCopyWith<_$_Flights> get copyWith =>
      __$$_FlightsCopyWithImpl<_$_Flights>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FlightsToJson(
      this,
    );
  }
}

abstract class _Flights implements Flights {
  const factory _Flights(
      {final List<OriginDestinationOptions>? originDestinationOptions,
      final FareTotal? fareTotal}) = _$_Flights;

  factory _Flights.fromJson(Map<String, dynamic> json) = _$_Flights.fromJson;

  @override
  List<OriginDestinationOptions>? get originDestinationOptions;
  @override
  FareTotal? get fareTotal;
  @override
  @JsonKey(ignore: true)
  _$$_FlightsCopyWith<_$_Flights> get copyWith =>
      throw _privateConstructorUsedError;
}

OriginDestinationOptions _$OriginDestinationOptionsFromJson(
    Map<String, dynamic> json) {
  return _OriginDestinationOptions.fromJson(json);
}

/// @nodoc
mixin _$OriginDestinationOptions {
  int? get totalStops => throw _privateConstructorUsedError;
  List<TourSegments>? get tourSegments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OriginDestinationOptionsCopyWith<OriginDestinationOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OriginDestinationOptionsCopyWith<$Res> {
  factory $OriginDestinationOptionsCopyWith(OriginDestinationOptions value,
          $Res Function(OriginDestinationOptions) then) =
      _$OriginDestinationOptionsCopyWithImpl<$Res, OriginDestinationOptions>;
  @useResult
  $Res call({int? totalStops, List<TourSegments>? tourSegments});
}

/// @nodoc
class _$OriginDestinationOptionsCopyWithImpl<$Res,
        $Val extends OriginDestinationOptions>
    implements $OriginDestinationOptionsCopyWith<$Res> {
  _$OriginDestinationOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalStops = freezed,
    Object? tourSegments = freezed,
  }) {
    return _then(_value.copyWith(
      totalStops: freezed == totalStops
          ? _value.totalStops
          : totalStops // ignore: cast_nullable_to_non_nullable
              as int?,
      tourSegments: freezed == tourSegments
          ? _value.tourSegments
          : tourSegments // ignore: cast_nullable_to_non_nullable
              as List<TourSegments>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OriginDestinationOptionsCopyWith<$Res>
    implements $OriginDestinationOptionsCopyWith<$Res> {
  factory _$$_OriginDestinationOptionsCopyWith(
          _$_OriginDestinationOptions value,
          $Res Function(_$_OriginDestinationOptions) then) =
      __$$_OriginDestinationOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? totalStops, List<TourSegments>? tourSegments});
}

/// @nodoc
class __$$_OriginDestinationOptionsCopyWithImpl<$Res>
    extends _$OriginDestinationOptionsCopyWithImpl<$Res,
        _$_OriginDestinationOptions>
    implements _$$_OriginDestinationOptionsCopyWith<$Res> {
  __$$_OriginDestinationOptionsCopyWithImpl(_$_OriginDestinationOptions _value,
      $Res Function(_$_OriginDestinationOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalStops = freezed,
    Object? tourSegments = freezed,
  }) {
    return _then(_$_OriginDestinationOptions(
      totalStops: freezed == totalStops
          ? _value.totalStops
          : totalStops // ignore: cast_nullable_to_non_nullable
              as int?,
      tourSegments: freezed == tourSegments
          ? _value._tourSegments
          : tourSegments // ignore: cast_nullable_to_non_nullable
              as List<TourSegments>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OriginDestinationOptions implements _OriginDestinationOptions {
  const _$_OriginDestinationOptions(
      {this.totalStops, final List<TourSegments>? tourSegments})
      : _tourSegments = tourSegments;

  factory _$_OriginDestinationOptions.fromJson(Map<String, dynamic> json) =>
      _$$_OriginDestinationOptionsFromJson(json);

  @override
  final int? totalStops;
  final List<TourSegments>? _tourSegments;
  @override
  List<TourSegments>? get tourSegments {
    final value = _tourSegments;
    if (value == null) return null;
    if (_tourSegments is EqualUnmodifiableListView) return _tourSegments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OriginDestinationOptions(totalStops: $totalStops, tourSegments: $tourSegments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OriginDestinationOptions &&
            (identical(other.totalStops, totalStops) ||
                other.totalStops == totalStops) &&
            const DeepCollectionEquality()
                .equals(other._tourSegments, _tourSegments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalStops,
      const DeepCollectionEquality().hash(_tourSegments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OriginDestinationOptionsCopyWith<_$_OriginDestinationOptions>
      get copyWith => __$$_OriginDestinationOptionsCopyWithImpl<
          _$_OriginDestinationOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OriginDestinationOptionsToJson(
      this,
    );
  }
}

abstract class _OriginDestinationOptions implements OriginDestinationOptions {
  const factory _OriginDestinationOptions(
      {final int? totalStops,
      final List<TourSegments>? tourSegments}) = _$_OriginDestinationOptions;

  factory _OriginDestinationOptions.fromJson(Map<String, dynamic> json) =
      _$_OriginDestinationOptions.fromJson;

  @override
  int? get totalStops;
  @override
  List<TourSegments>? get tourSegments;
  @override
  @JsonKey(ignore: true)
  _$$_OriginDestinationOptionsCopyWith<_$_OriginDestinationOptions>
      get copyWith => throw _privateConstructorUsedError;
}

TourSegments _$TourSegmentsFromJson(Map<String, dynamic> json) {
  return _TourSegments.fromJson(json);
}

/// @nodoc
mixin _$TourSegments {
  String? get airlineName => throw _privateConstructorUsedError;
  String? get departureAirportCode => throw _privateConstructorUsedError;
  String? get departureDateTime => throw _privateConstructorUsedError;
  String? get arrivalAirportCode => throw _privateConstructorUsedError;
  String? get arrivalDateTime => throw _privateConstructorUsedError;
  String? get journeyDuration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TourSegmentsCopyWith<TourSegments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourSegmentsCopyWith<$Res> {
  factory $TourSegmentsCopyWith(
          TourSegments value, $Res Function(TourSegments) then) =
      _$TourSegmentsCopyWithImpl<$Res, TourSegments>;
  @useResult
  $Res call(
      {String? airlineName,
      String? departureAirportCode,
      String? departureDateTime,
      String? arrivalAirportCode,
      String? arrivalDateTime,
      String? journeyDuration});
}

/// @nodoc
class _$TourSegmentsCopyWithImpl<$Res, $Val extends TourSegments>
    implements $TourSegmentsCopyWith<$Res> {
  _$TourSegmentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airlineName = freezed,
    Object? departureAirportCode = freezed,
    Object? departureDateTime = freezed,
    Object? arrivalAirportCode = freezed,
    Object? arrivalDateTime = freezed,
    Object? journeyDuration = freezed,
  }) {
    return _then(_value.copyWith(
      airlineName: freezed == airlineName
          ? _value.airlineName
          : airlineName // ignore: cast_nullable_to_non_nullable
              as String?,
      departureAirportCode: freezed == departureAirportCode
          ? _value.departureAirportCode
          : departureAirportCode // ignore: cast_nullable_to_non_nullable
              as String?,
      departureDateTime: freezed == departureDateTime
          ? _value.departureDateTime
          : departureDateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      arrivalAirportCode: freezed == arrivalAirportCode
          ? _value.arrivalAirportCode
          : arrivalAirportCode // ignore: cast_nullable_to_non_nullable
              as String?,
      arrivalDateTime: freezed == arrivalDateTime
          ? _value.arrivalDateTime
          : arrivalDateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      journeyDuration: freezed == journeyDuration
          ? _value.journeyDuration
          : journeyDuration // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TourSegmentsCopyWith<$Res>
    implements $TourSegmentsCopyWith<$Res> {
  factory _$$_TourSegmentsCopyWith(
          _$_TourSegments value, $Res Function(_$_TourSegments) then) =
      __$$_TourSegmentsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? airlineName,
      String? departureAirportCode,
      String? departureDateTime,
      String? arrivalAirportCode,
      String? arrivalDateTime,
      String? journeyDuration});
}

/// @nodoc
class __$$_TourSegmentsCopyWithImpl<$Res>
    extends _$TourSegmentsCopyWithImpl<$Res, _$_TourSegments>
    implements _$$_TourSegmentsCopyWith<$Res> {
  __$$_TourSegmentsCopyWithImpl(
      _$_TourSegments _value, $Res Function(_$_TourSegments) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? airlineName = freezed,
    Object? departureAirportCode = freezed,
    Object? departureDateTime = freezed,
    Object? arrivalAirportCode = freezed,
    Object? arrivalDateTime = freezed,
    Object? journeyDuration = freezed,
  }) {
    return _then(_$_TourSegments(
      airlineName: freezed == airlineName
          ? _value.airlineName
          : airlineName // ignore: cast_nullable_to_non_nullable
              as String?,
      departureAirportCode: freezed == departureAirportCode
          ? _value.departureAirportCode
          : departureAirportCode // ignore: cast_nullable_to_non_nullable
              as String?,
      departureDateTime: freezed == departureDateTime
          ? _value.departureDateTime
          : departureDateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      arrivalAirportCode: freezed == arrivalAirportCode
          ? _value.arrivalAirportCode
          : arrivalAirportCode // ignore: cast_nullable_to_non_nullable
              as String?,
      arrivalDateTime: freezed == arrivalDateTime
          ? _value.arrivalDateTime
          : arrivalDateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      journeyDuration: freezed == journeyDuration
          ? _value.journeyDuration
          : journeyDuration // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TourSegments implements _TourSegments {
  const _$_TourSegments(
      {this.airlineName,
      this.departureAirportCode,
      this.departureDateTime,
      this.arrivalAirportCode,
      this.arrivalDateTime,
      this.journeyDuration});

  factory _$_TourSegments.fromJson(Map<String, dynamic> json) =>
      _$$_TourSegmentsFromJson(json);

  @override
  final String? airlineName;
  @override
  final String? departureAirportCode;
  @override
  final String? departureDateTime;
  @override
  final String? arrivalAirportCode;
  @override
  final String? arrivalDateTime;
  @override
  final String? journeyDuration;

  @override
  String toString() {
    return 'TourSegments(airlineName: $airlineName, departureAirportCode: $departureAirportCode, departureDateTime: $departureDateTime, arrivalAirportCode: $arrivalAirportCode, arrivalDateTime: $arrivalDateTime, journeyDuration: $journeyDuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TourSegments &&
            (identical(other.airlineName, airlineName) ||
                other.airlineName == airlineName) &&
            (identical(other.departureAirportCode, departureAirportCode) ||
                other.departureAirportCode == departureAirportCode) &&
            (identical(other.departureDateTime, departureDateTime) ||
                other.departureDateTime == departureDateTime) &&
            (identical(other.arrivalAirportCode, arrivalAirportCode) ||
                other.arrivalAirportCode == arrivalAirportCode) &&
            (identical(other.arrivalDateTime, arrivalDateTime) ||
                other.arrivalDateTime == arrivalDateTime) &&
            (identical(other.journeyDuration, journeyDuration) ||
                other.journeyDuration == journeyDuration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      airlineName,
      departureAirportCode,
      departureDateTime,
      arrivalAirportCode,
      arrivalDateTime,
      journeyDuration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TourSegmentsCopyWith<_$_TourSegments> get copyWith =>
      __$$_TourSegmentsCopyWithImpl<_$_TourSegments>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TourSegmentsToJson(
      this,
    );
  }
}

abstract class _TourSegments implements TourSegments {
  const factory _TourSegments(
      {final String? airlineName,
      final String? departureAirportCode,
      final String? departureDateTime,
      final String? arrivalAirportCode,
      final String? arrivalDateTime,
      final String? journeyDuration}) = _$_TourSegments;

  factory _TourSegments.fromJson(Map<String, dynamic> json) =
      _$_TourSegments.fromJson;

  @override
  String? get airlineName;
  @override
  String? get departureAirportCode;
  @override
  String? get departureDateTime;
  @override
  String? get arrivalAirportCode;
  @override
  String? get arrivalDateTime;
  @override
  String? get journeyDuration;
  @override
  @JsonKey(ignore: true)
  _$$_TourSegmentsCopyWith<_$_TourSegments> get copyWith =>
      throw _privateConstructorUsedError;
}

FareTotal _$FareTotalFromJson(Map<String, dynamic> json) {
  return _FareTotal.fromJson(json);
}

/// @nodoc
mixin _$FareTotal {
  PriceBase? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FareTotalCopyWith<FareTotal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FareTotalCopyWith<$Res> {
  factory $FareTotalCopyWith(FareTotal value, $Res Function(FareTotal) then) =
      _$FareTotalCopyWithImpl<$Res, FareTotal>;
  @useResult
  $Res call({PriceBase? total});

  $PriceBaseCopyWith<$Res>? get total;
}

/// @nodoc
class _$FareTotalCopyWithImpl<$Res, $Val extends FareTotal>
    implements $FareTotalCopyWith<$Res> {
  _$FareTotalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as PriceBase?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceBaseCopyWith<$Res>? get total {
    if (_value.total == null) {
      return null;
    }

    return $PriceBaseCopyWith<$Res>(_value.total!, (value) {
      return _then(_value.copyWith(total: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FareTotalCopyWith<$Res> implements $FareTotalCopyWith<$Res> {
  factory _$$_FareTotalCopyWith(
          _$_FareTotal value, $Res Function(_$_FareTotal) then) =
      __$$_FareTotalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PriceBase? total});

  @override
  $PriceBaseCopyWith<$Res>? get total;
}

/// @nodoc
class __$$_FareTotalCopyWithImpl<$Res>
    extends _$FareTotalCopyWithImpl<$Res, _$_FareTotal>
    implements _$$_FareTotalCopyWith<$Res> {
  __$$_FareTotalCopyWithImpl(
      _$_FareTotal _value, $Res Function(_$_FareTotal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
  }) {
    return _then(_$_FareTotal(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as PriceBase?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FareTotal implements _FareTotal {
  const _$_FareTotal({this.total});

  factory _$_FareTotal.fromJson(Map<String, dynamic> json) =>
      _$$_FareTotalFromJson(json);

  @override
  final PriceBase? total;

  @override
  String toString() {
    return 'FareTotal(total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FareTotal &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FareTotalCopyWith<_$_FareTotal> get copyWith =>
      __$$_FareTotalCopyWithImpl<_$_FareTotal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FareTotalToJson(
      this,
    );
  }
}

abstract class _FareTotal implements FareTotal {
  const factory _FareTotal({final PriceBase? total}) = _$_FareTotal;

  factory _FareTotal.fromJson(Map<String, dynamic> json) =
      _$_FareTotal.fromJson;

  @override
  PriceBase? get total;
  @override
  @JsonKey(ignore: true)
  _$$_FareTotalCopyWith<_$_FareTotal> get copyWith =>
      throw _privateConstructorUsedError;
}

PriceBase _$PriceBaseFromJson(Map<String, dynamic> json) {
  return _PriceBase.fromJson(json);
}

/// @nodoc
mixin _$PriceBase {
  String? get amount => throw _privateConstructorUsedError;
  String? get currencyCode => throw _privateConstructorUsedError;
  String? get decimalPlaces => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceBaseCopyWith<PriceBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceBaseCopyWith<$Res> {
  factory $PriceBaseCopyWith(PriceBase value, $Res Function(PriceBase) then) =
      _$PriceBaseCopyWithImpl<$Res, PriceBase>;
  @useResult
  $Res call({String? amount, String? currencyCode, String? decimalPlaces});
}

/// @nodoc
class _$PriceBaseCopyWithImpl<$Res, $Val extends PriceBase>
    implements $PriceBaseCopyWith<$Res> {
  _$PriceBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? currencyCode = freezed,
    Object? decimalPlaces = freezed,
  }) {
    return _then(_value.copyWith(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      decimalPlaces: freezed == decimalPlaces
          ? _value.decimalPlaces
          : decimalPlaces // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PriceBaseCopyWith<$Res> implements $PriceBaseCopyWith<$Res> {
  factory _$$_PriceBaseCopyWith(
          _$_PriceBase value, $Res Function(_$_PriceBase) then) =
      __$$_PriceBaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? amount, String? currencyCode, String? decimalPlaces});
}

/// @nodoc
class __$$_PriceBaseCopyWithImpl<$Res>
    extends _$PriceBaseCopyWithImpl<$Res, _$_PriceBase>
    implements _$$_PriceBaseCopyWith<$Res> {
  __$$_PriceBaseCopyWithImpl(
      _$_PriceBase _value, $Res Function(_$_PriceBase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? currencyCode = freezed,
    Object? decimalPlaces = freezed,
  }) {
    return _then(_$_PriceBase(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      decimalPlaces: freezed == decimalPlaces
          ? _value.decimalPlaces
          : decimalPlaces // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PriceBase implements _PriceBase {
  const _$_PriceBase({this.amount, this.currencyCode, this.decimalPlaces});

  factory _$_PriceBase.fromJson(Map<String, dynamic> json) =>
      _$$_PriceBaseFromJson(json);

  @override
  final String? amount;
  @override
  final String? currencyCode;
  @override
  final String? decimalPlaces;

  @override
  String toString() {
    return 'PriceBase(amount: $amount, currencyCode: $currencyCode, decimalPlaces: $decimalPlaces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceBase &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.decimalPlaces, decimalPlaces) ||
                other.decimalPlaces == decimalPlaces));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, amount, currencyCode, decimalPlaces);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriceBaseCopyWith<_$_PriceBase> get copyWith =>
      __$$_PriceBaseCopyWithImpl<_$_PriceBase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriceBaseToJson(
      this,
    );
  }
}

abstract class _PriceBase implements PriceBase {
  const factory _PriceBase(
      {final String? amount,
      final String? currencyCode,
      final String? decimalPlaces}) = _$_PriceBase;

  factory _PriceBase.fromJson(Map<String, dynamic> json) =
      _$_PriceBase.fromJson;

  @override
  String? get amount;
  @override
  String? get currencyCode;
  @override
  String? get decimalPlaces;
  @override
  @JsonKey(ignore: true)
  _$$_PriceBaseCopyWith<_$_PriceBase> get copyWith =>
      throw _privateConstructorUsedError;
}
