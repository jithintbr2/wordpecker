// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeSearchModel _$_$_HomeSearchModelFromJson(Map<String, dynamic> json) {
  return _$_HomeSearchModel(
    items: (json['items'] as List<dynamic>)
        .map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    shops: (json['shops'] as List<dynamic>)
        .map((e) => ShopModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_HomeSearchModelToJson(_$_HomeSearchModel instance) =>
    <String, dynamic>{
      'items': instance.items,
      'shops': instance.shops,
    };
