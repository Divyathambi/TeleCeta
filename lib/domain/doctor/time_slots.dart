import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teleceta_patients/domain/core/value_objects.dart';

part 'time_slots.freezed.dart';

@freezed
class TimeSlots with _$TimeSlots {
  const TimeSlots._();

  const factory TimeSlots({
    @required UniqueId? id,
    @required DateTime? beginningTime,
    @required DateTime? endingTime,
    @required List<String>? days,
  }) = _TimeSlots;

  factory TimeSlots.empty() => TimeSlots(
        id: UniqueId(),
        beginningTime: DateTime.now(),
        endingTime: DateTime.now(),
        days: [],
      );
}
