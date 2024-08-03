import 'dart:developer';

import 'package:dartz/dartz.dart' hide Order;
import 'package:injectable/injectable.dart' hide Order;

import '../../domain/order/order.dart';
import 'data_sources/local_data_provider.dart';

@Injectable(as: IOrderRepository)
class OrderRepository implements IOrderRepository {
  final OrderLocalDataProvider _localDataProvider;

  OrderRepository(this._localDataProvider);

  @override
  Future<Either<OrderFailure, List<Order>>> loadOrders({
    bool showEmptyOrders = false,
  }) async {
    try {
      final result = await _localDataProvider.fetchOrders(
        showEmptyOrders: showEmptyOrders,
      );

      if (result.hasError) {
        return left(result.error!);
      }

      final orders = result.data!.map((e) => e.toDomain()).toList();

      return right(orders);
    } catch (e, s) {
      log(
        'loadOrdersError',
        name: 'OrderRepository',
        error: e,
        stackTrace: s,
      );
      return left(const OrderFailure.unexpectedError());
    }
  }
}
