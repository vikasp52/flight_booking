// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_in_searching_flight.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ErrorInFlightSearch _$$_ErrorInFlightSearchFromJson(
        Map<String, dynamic> json) =>
    _$_ErrorInFlightSearch(
      status: json['status'] as bool?,
      message: json['message'] == null
          ? null
          : Message.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ErrorInFlightSearchToJson(
        _$_ErrorInFlightSearch instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      journeyType: (json['journeyType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      journeyClass:
          (json['class'] as List<dynamic>?)?.map((e) => e as String).toList(),
      originDestinationInfo: (json['OriginDestinationInfo'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      adults:
          (json['adults'] as List<dynamic>?)?.map((e) => e as String).toList(),
      originDestinationInfo0AirportOriginCode:
          (json['originDestinationInfo0AirportOriginCode'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'journeyType': instance.journeyType,
      'class': instance.journeyClass,
      'OriginDestinationInfo': instance.originDestinationInfo,
      'adults': instance.adults,
      'originDestinationInfo0AirportOriginCode':
          instance.originDestinationInfo0AirportOriginCode,
    };
