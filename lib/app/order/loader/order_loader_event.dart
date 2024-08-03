part of 'order_loader_bloc.dart';

@freezed
sealed class OrderLoaderEvent with _$OrderLoaderEvent {
  const factory OrderLoaderEvent.fetched({
    @Default(false) bool showEmptyOrders,
  }) = _Fetched;
}
