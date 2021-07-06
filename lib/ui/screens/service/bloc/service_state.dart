part of 'service_bloc.dart';

@freezed
class ServiceState with _$ServiceState {
  const factory ServiceState.loading() = _Loading;
  const factory ServiceState.loaded(List<ServiceModel> data) = _Loaded;
  const factory ServiceState.failed(NetworkExceptions exceptions) = _Failed;
}
