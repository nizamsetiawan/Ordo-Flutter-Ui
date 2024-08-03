part of 'order_loader_bloc.dart';

@freezed
class OrderLoaderState with _$OrderLoaderState {
  const factory OrderLoaderState({
    required List<Order> orders,
    required Option<OrderFailure> failureOption,
    @Default(false) bool loadInProgress,
  }) = _OrderLoaderState;

  factory OrderLoaderState.initial() => OrderLoaderState(
        orders: List.empty(),
        failureOption: none(),
      );
}
