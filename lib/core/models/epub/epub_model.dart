import 'package:flutter/src/widgets/scroll_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/menu/menu_model.dart';

part 'epub_model.freezed.dart';
part 'epub_model.g.dart';

@freezed
class EPubModel with _$EPubModel {
  const factory EPubModel({
     required int itemId,
    required int pubId,
    required String fileName,
    required String image,
    required String name,
  }) = _EPubModel;

  factory EPubModel.fromJson(Map<String, dynamic> json) =>
      _$EPubModelFromJson(json);


}
