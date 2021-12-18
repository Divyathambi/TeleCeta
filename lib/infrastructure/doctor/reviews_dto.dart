import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teleceta_patients/domain/core/value_objects.dart';
import 'package:teleceta_patients/domain/doctor/reviews.dart';

part 'reviews_dto.freezed.dart';
part 'reviews_dto.g.dart';

@freezed
class ReviewsDto with _$ReviewsDto {
  const ReviewsDto._();

  const factory ReviewsDto(
      {@JsonKey(ignore: true) String? id,
      @required String? name,
      @required int? rating,
      @required String? content}) = _ReviewsDto;

  factory ReviewsDto.fromDomain(Reviews reviews) {
    return ReviewsDto(
        id: reviews.id!.getOrCrash(),
        name: reviews.name!,
        rating: reviews.rating!,
        content: reviews.content!);
  }

  Reviews toDomain() {
    return Reviews(
        id: UniqueId.fromUniqueString(id!),
        name: name!,
        rating: rating!,
        content: content!);
  }

  factory ReviewsDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewsDtoFromJson(json);

  factory ReviewsDto.fromFirestore(DocumentSnapshot doc) {
    return ReviewsDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
