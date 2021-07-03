part of 'order_preview_bloc.dart';

@freezed
class OrderPreviewState with _$OrderPreviewState {
  const factory OrderPreviewState.loading() = _Loading;
  const factory OrderPreviewState.loaded(OrderPreviewModel data) = _Loaded;
  const factory OrderPreviewState.failed(NetworkExceptions exceptions) =
      _Failed;
}
