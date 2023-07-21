// ignore_for_file: invalid_annotation_target

// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_in_searching_flight.freezed.dart';
part 'error_in_searching_flight.g.dart';

@freezed
class ErrorInFlightSearch with _$ErrorInFlightSearch {
  const factory ErrorInFlightSearch({
    final bool? status,
    final Message? message,
  }) = _ErrorInFlightSearch;

  factory ErrorInFlightSearch.fromJson(Map<String, Object?> json) =>
      _$ErrorInFlightSearchFromJson(json);
}

@freezed
class Message with _$Message {
  const factory Message({
    final List<String>? journeyType,
    @JsonKey(name: 'class') final List<String>? journeyClass,
    @JsonKey(name: 'OriginDestinationInfo')
    final List<String>? originDestinationInfo,
    final List<String>? adults,
    final List<String>? originDestinationInfo0AirportOriginCode,
  }) = _Message;

  factory Message.fromJson(Map<String, Object?> json) =>
      _$MessageFromJson(json);
}
