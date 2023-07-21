// ignore_for_file: invalid_annotation_target

// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flight_result.freezed.dart';
part 'flight_result.g.dart';

@freezed
class FlightResult with _$FlightResult {
  const factory FlightResult({
  final bool? status,
  final String? message,
  final Data? data,
  }) = _FlightResult;

  factory FlightResult.fromJson(Map<String, Object?> json) =>
      _$FlightResultFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
  String? sessionId,
  List<Flights>? flights,
  }) = _Data;

  factory Data.fromJson(Map<String, Object?> json) =>
      _$DataFromJson(json);
}

@freezed
class Flights with _$Flights {
  const factory Flights({
  List<OriginDestinationOptions>? originDestinationOptions,
  FareTotal? fareTotal,

  }) = _Flights;

  factory Flights.fromJson(Map<String, Object?> json) =>
      _$FlightsFromJson(json);
}

@freezed
class OriginDestinationOptions with _$OriginDestinationOptions {
  const factory OriginDestinationOptions({
   int? totalStops,
  List<TourSegments>? tourSegments,

  }) = _OriginDestinationOptions;

  factory OriginDestinationOptions.fromJson(Map<String, Object?> json) =>
      _$OriginDestinationOptionsFromJson(json);
}

@freezed
class TourSegments with _$TourSegments {
  const factory TourSegments({
  String? airlineName,
  String? departureAirportCode,
  String? departureDateTime,
  String? arrivalAirportCode,
  String? arrivalDateTime,
  String? journeyDuration,

  }) = _TourSegments;

  factory TourSegments.fromJson(Map<String, Object?> json) =>
      _$TourSegmentsFromJson(json);
}

@freezed
class FareTotal with _$FareTotal {
  const factory FareTotal({
  PriceBase? total,

  }) = _FareTotal;

  factory FareTotal.fromJson(Map<String, Object?> json) =>
      _$FareTotalFromJson(json);
}

@freezed
class PriceBase with _$PriceBase {
  const factory PriceBase({
  String? amount,
  String? currencyCode,
  String? decimalPlaces,

  }) = _PriceBase;

  factory PriceBase.fromJson(Map<String, Object?> json) =>
      _$PriceBaseFromJson(json);
}

