import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teleceta_patients/domain/core/value_objects.dart';
part 'user.freezed.dart';

@freezed 
class AppUser with _$AppUser {
  const factory AppUser({
    @required UniqueId? uniqueId, 
  }) = _AppUser;
}