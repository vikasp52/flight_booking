// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flight_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlightResult _$$_FlightResultFromJson(Map<String, dynamic> json) =>
    _$_FlightResult(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FlightResultToJson(_$_FlightResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      sessionId: json['sessionId'] as String?,
      flights: (json['flights'] as List<dynamic>?)
          ?.map((e) => Flights.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'sessionId': instance.sessionId,
      'flights': instance.flights,
    };

_$_Flights _$$_FlightsFromJson(Map<String, dynamic> json) => _$_Flights(
      originDestinationOptions:
          (json['originDestinationOptions'] as List<dynamic>?)
              ?.map((e) =>
                  OriginDestinationOptions.fromJson(e as Map<String, dynamic>))
              .toList(),
      fareTotal: json['fareTotal'] == null
          ? null
          : FareTotal.fromJson(json['fareTotal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FlightsToJson(_$_Flights instance) =>
    <String, dynamic>{
      'originDestinationOptions': instance.originDestinationOptions,
      'fareTotal': instance.fareTotal,
    };

_$_OriginDestinationOptions _$$_OriginDestinationOptionsFromJson(
        Map<String, dynamic> json) =>
    _$_OriginDestinationOptions(
      totalStops: json['totalStops'] as int?,
      tourSegments: (json['tourSegments'] as List<dynamic>?)
          ?.map((e) => TourSegments.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OriginDestinationOptionsToJson(
        _$_OriginDestinationOptions instance) =>
    <String, dynamic>{
      'totalStops': instance.totalStops,
      'tourSegments': instance.tourSegments,
    };

_$_TourSegments _$$_TourSegmentsFromJson(Map<String, dynamic> json) =>
    _$_TourSegments(
      airlineName: json['airlineName'] as String?,
      departureAirportCode: json['departureAirportCode'] as String?,
      departureDateTime: json['departureDateTime'] as String?,
      arrivalAirportCode: json['arrivalAirportCode'] as String?,
      arrivalDateTime: json['arrivalDateTime'] as String?,
      journeyDuration: json['journeyDuration'] as String?,
    );

Map<String, dynamic> _$$_TourSegmentsToJson(_$_TourSegments instance) =>
    <String, dynamic>{
      'airlineName': instance.airlineName,
      'departureAirportCode': instance.departureAirportCode,
      'departureDateTime': instance.departureDateTime,
      'arrivalAirportCode': instance.arrivalAirportCode,
      'arrivalDateTime': instance.arrivalDateTime,
      'journeyDuration': instance.journeyDuration,
    };

_$_FareTotal _$$_FareTotalFromJson(Map<String, dynamic> json) => _$_FareTotal(
      total: json['total'] == null
          ? null
          : PriceBase.fromJson(json['total'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FareTotalToJson(_$_FareTotal instance) =>
    <String, dynamic>{
      'total': instance.total,
    };

_$_PriceBase _$$_PriceBaseFromJson(Map<String, dynamic> json) => _$_PriceBase(
      amount: json['amount'] as String?,
      currencyCode: json['currencyCode'] as String?,
      decimalPlaces: json['decimalPlaces'] as String?,
    );

Map<String, dynamic> _$$_PriceBaseToJson(_$_PriceBase instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currencyCode': instance.currencyCode,
      'decimalPlaces': instance.decimalPlaces,
    };
