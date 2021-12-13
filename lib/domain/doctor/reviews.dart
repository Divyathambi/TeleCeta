import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teleceta_patients/domain/core/value_objects.dart';

part 'reviews.freezed.dart';

@freezed
class Reviews with _$Reviews {
  const Reviews._();

  const factory Reviews(
      {@required UniqueId? id,
      @required String? name,
      @required int? rating,
      @required String? content}) = _Reviews;

  factory Reviews.empty() =>
      Reviews(id: UniqueId(), name: '', rating: 0, content: '');
}
