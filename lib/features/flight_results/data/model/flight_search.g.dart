// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flight_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlightSearch _$$_FlightSearchFromJson(Map<String, dynamic> json) =>
    _$_FlightSearch(
      journeyType: json['journeyType'] as String?,
      departureDate: json['OriginDestinationInfo[0][departureDate]'] as String?,
      returnDate: json['OriginDestinationInfo[0][returnDate]'] as String?,
      airportOriginCode:
          json['OriginDestinationInfo[0][airportOriginCode]'] as String?,
      airportDestinationCode:
          json['OriginDestinationInfo[0][airportDestinationCode]'] as String?,
      flightClass: json['class'] as String?,
      adults: json['adults'] as int?,
      childs: json['childs'] as int?,
      infants: json['infants'] as int?,
    );

Map<String, dynamic> _$$_FlightSearchToJson(_$_FlightSearch instance) =>
    <String, dynamic>{
      'journeyType': instance.journeyType,
      'OriginDestinationInfo[0][departureDate]': instance.departureDate,
      'OriginDestinationInfo[0][returnDate]': instance.returnDate,
      'OriginDestinationInfo[0][airportOriginCode]': instance.airportOriginCode,
      'OriginDestinationInfo[0][airportDestinationCode]':
          instance.airportDestinationCode,
      'class': instance.flightClass,
      'adults': instance.adults,
      'childs': instance.childs,
      'infants': instance.infants,
    };

_$_OriginDestinationInfo _$$_OriginDestinationInfoFromJson(
        Map<String, dynamic> json) =>
    _$_OriginDestinationInfo(
      departureDate: json['OriginDestinationInfo[0][departureDate]'] as String?,
      returnDate: json['OriginDestinationInfo[0][returnDate]'] as String?,
      airportOriginCode:
          json['OriginDestinationInfo[0][airportOriginCode]'] as String?,
      airportDestinationCode:
          json['OriginDestinationInfo[0][airportDestinationCode]'] as String?,
    );

Map<String, dynamic> _$$_OriginDestinationInfoToJson(
        _$_OriginDestinationInfo instance) =>
    <String, dynamic>{
      'OriginDestinationInfo[0][departureDate]': instance.departureDate,
      'OriginDestinationInfo[0][returnDate]': instance.returnDate,
      'OriginDestinationInfo[0][airportOriginCode]': instance.airportOriginCode,
      'OriginDestinationInfo[0][airportDestinationCode]':
          instance.airportDestinationCode,
    };
