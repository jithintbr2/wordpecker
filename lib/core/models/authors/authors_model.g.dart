// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authors_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthorsModel _$_$_AuthorsModelFromJson(Map<String, dynamic> json) {
  return _$_AuthorsModel(
    authorId: json['authorId'] as int,
    authorName: json['authorName'] as String,
    imageUrl: json['imageUrl'] as String,
  );
}

Map<String, dynamic> _$_$_AuthorsModelToJson(_$_AuthorsModel instance) =>
    <String, dynamic>{
      'authorId': instance.authorId,
      'authorName': instance.authorName,
      'imageUrl': instance.imageUrl,
    };
