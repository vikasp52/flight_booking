// ignore_for_file: invalid_annotation_target

// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flight_search.freezed.dart';
part 'flight_search.g.dart';

@freezed
class FlightSearch with _$FlightSearch {
  const factory FlightSearch({
    required final String? journeyType,
    @JsonKey(name: 'OriginDestinationInfo[0][departureDate]')
    required final String? departureDate,
    @JsonKey(name: 'OriginDestinationInfo[0][returnDate]')
    final String? returnDate,
    @JsonKey(name: 'OriginDestinationInfo[0][airportOriginCode]')
    required final String? airportOriginCode,
    @JsonKey(name: 'OriginDestinationInfo[0][airportDestinationCode]')
    required final String? airportDestinationCode,
    @JsonKey(name: 'class') required final String? flightClass,
    required final int? adults,
    required final int? childs,
    required final int? infants,
  }) = _FlightSearch;

  factory FlightSearch.fromJson(Map<String, Object?> json) =>
      _$FlightSearchFromJson(json);
}

@freezed
class OriginDestinationInfo with _$OriginDestinationInfo {
  const factory OriginDestinationInfo({
    @JsonKey(name: 'OriginDestinationInfo[0][departureDate]')
    required final String? departureDate,
    @JsonKey(name: 'OriginDestinationInfo[0][returnDate]')
    final String? returnDate,
    @JsonKey(name: 'OriginDestinationInfo[0][airportOriginCode]')
    required final String? airportOriginCode,
    @JsonKey(name: 'OriginDestinationInfo[0][airportDestinationCode]')
    required final String? airportDestinationCode,
  }) = _OriginDestinationInfo;

  factory OriginDestinationInfo.fromJson(Map<String, Object?> json) =>
      _$OriginDestinationInfoFromJson(json);
}
