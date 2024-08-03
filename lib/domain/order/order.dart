import 'package:dartz/dartz.dart' hide Order;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order_failure.dart';
part 'i_order_repository.dart';

@freezed
class Order with _$Order {
  const Order._();

  const factory Order({
    required int id,
    required String invoiceNo,
    required String imagePath,
    required String name,
    required String address,
    DateTime? date,
    required num nominal,
    required num nominalFine,
    required int lateDays,
  }) = _Order;

  factory Order.empty() => const Order(
        id: 0,
        invoiceNo: '',
        imagePath: '',
        name: '',
        address: '',
        nominal: 0,
        nominalFine: 0,
        lateDays: 0,
      );

  bool get isHasPenalty => nominalFine != 0 && lateDays != 0;
}
