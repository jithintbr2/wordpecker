import 'package:flutter/src/widgets/scroll_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/menu/menu_model.dart';

part 'authors_model.freezed.dart';
part 'authors_model.g.dart';

@freezed
class AuthorsModel with _$AuthorsModel {
  const factory AuthorsModel({
     required int authorId,
    required String authorName,
    required String imageUrl,
  }) = _AuthorsModel;

  factory AuthorsModel.fromJson(Map<String, dynamic> json) =>
      _$AuthorsModelFromJson(json);


}
