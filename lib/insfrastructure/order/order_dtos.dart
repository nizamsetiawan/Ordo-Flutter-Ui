import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/order/order.dart';

part 'order_dtos.freezed.dart';
part 'order_dtos.g.dart';

@freezed
class OrderDto with _$OrderDto {
  const OrderDto._();

  const factory OrderDto({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'image_path') required String imagePath,
    @JsonKey(name: 'invoice_no') required String invoiceNo,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'date') DateTime? date,
    @JsonKey(name: 'nominal') required num nominal,
    @JsonKey(name: 'nominal_fine') required num nominalFine,
    @JsonKey(name: 'late_days') required int lateDays,
  }) = _OrderDto;

  factory OrderDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoFromJson(json);

  Order toDomain() => Order(
        id: id,
        invoiceNo: invoiceNo,
        imagePath: imagePath,
        name: name,
        address: address,
        nominal: nominal,
        nominalFine: nominalFine,
        lateDays: lateDays,
        date: date,
      );
}
