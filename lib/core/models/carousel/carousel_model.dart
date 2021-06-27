import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'carousel_model.freezed.dart';
part 'carousel_model.g.dart';

@freezed
class CarouselModel with _$CarouselModel {
  const factory CarouselModel({
    int? id,
    int? shopId,
    int? itemId,
    required String imageUrl,
    double? aspectRatio,
    String? externalLink,
  }) = _CarouselModel;

  factory CarouselModel.fromJson(Map<String, dynamic> json) =>
      _$CarouselModelFromJson(json);
}
