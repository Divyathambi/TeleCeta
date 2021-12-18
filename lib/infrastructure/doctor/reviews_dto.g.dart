// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewsDto _$$_ReviewsDtoFromJson(Map<String, dynamic> json) =>
    _$_ReviewsDto(
      name: json['name'] as String?,
      rating: json['rating'] as int?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$_ReviewsDtoToJson(_$_ReviewsDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'rating': instance.rating,
      'content': instance.content,
    };
