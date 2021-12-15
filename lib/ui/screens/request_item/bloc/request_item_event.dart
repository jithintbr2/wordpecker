part of 'request_item_bloc.dart';

@freezed
class RequestItemEvent with _$RequestItemEvent {
  const factory RequestItemEvent.request({
    required List items,
    required int franchiseId,
    required String remark,
    required List? images,
    required FlutterUploader uploader,
  }) = _Request;
}
