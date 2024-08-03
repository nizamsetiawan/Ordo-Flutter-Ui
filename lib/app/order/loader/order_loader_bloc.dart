import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' hide Order;

import '../../../domain/order/order.dart';

part 'order_loader_event.dart';
part 'order_loader_state.dart';
part 'order_loader_bloc.freezed.dart';

@injectable
class OrderLoaderBloc extends Bloc<OrderLoaderEvent, OrderLoaderState> {
  final IOrderRepository _orderRepository;

  OrderLoaderBloc(this._orderRepository) : super(OrderLoaderState.initial()) {
    on<OrderLoaderEvent>(_onOrderLoaderEvent);
  }

  Future<void> _onOrderLoaderEvent(
    OrderLoaderEvent event,
    Emitter<OrderLoaderState> emit,
  ) {
    return event.map(
      fetched: (e) async {
        var newState = state.copyWith(
          loadInProgress: true,
        );

        emit(newState);

        final failureOrOrder = await _orderRepository.loadOrders(
          showEmptyOrders: e.showEmptyOrders,
        );

        newState = failureOrOrder.fold(
          (f) => state.copyWith(
            failureOption: optionOf(f),
          ),
          (orders) => state.copyWith(
            orders: orders,
            failureOption: none(),
          ),
        );

        emit(
          newState.copyWith(
            loadInProgress: false,
          ),
        );
      },
    );
  }
}
