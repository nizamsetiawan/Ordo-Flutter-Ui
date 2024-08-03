import 'dart:convert';
import 'dart:developer';

import 'package:data_channel/data_channel.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/order/order.dart';
import '../../../presentation/components/gen/assets.gen.dart';
import '../order_dtos.dart';

@injectable
class OrderLocalDataProvider {
  Future<DC<OrderFailure, List<OrderDto>>> fetchOrders({
    bool showEmptyOrders = false,
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 1));

      if (showEmptyOrders) {
        return DC.error(const OrderFailure.emptyList());
      }

      final rawJson = await rootBundle.loadString(Assets.json.order);

      final response = await json.decode(rawJson);

      final dtos = (response['items'] as List)
          .map((json) => OrderDto.fromJson(json))
          .toList();

      return DC.data(dtos);
    } catch (e, s) {
      log(
        'fetchOrdersError',
        name: 'OrderLocalDataProvider',
        error: e,
        stackTrace: s,
      );
      return DC.error(const OrderFailure.unexpectedError());
    }
  }
}
