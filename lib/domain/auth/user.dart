import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teleceta_patients/domain/core/value_objects.dart';
part 'user.freezed.dart';

@freezed 
class User with _$User {
  const factory User({
    @required UniqueId? uniqueId, 
  }) = _User;
}