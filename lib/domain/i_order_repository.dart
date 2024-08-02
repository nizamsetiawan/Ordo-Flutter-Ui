part of 'order.dart';

abstract class IOrderRepository {
  Future<Either<OrderFailure, List<Order>>> loadOrders({
    bool showEmptyOrders = false,
  });
}
