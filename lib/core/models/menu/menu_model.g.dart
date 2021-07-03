// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MenuModel _$_$_MenuModelFromJson(Map<String, dynamic> json) {
  return _$_MenuModel(
    id: json['menuId'] as int,
    title: json['title'] as String,
    items: (json['item'] as List<dynamic>)
        .map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_MenuModelToJson(_$_MenuModel instance) =>
    <String, dynamic>{
      'menuId': instance.id,
      'title': instance.title,
      'item': instance.items,
    };
