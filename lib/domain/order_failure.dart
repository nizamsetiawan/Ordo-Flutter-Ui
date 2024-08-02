part of 'order.dart';

@freezed
sealed class OrderFailure with _$OrderFailure {
  const factory OrderFailure.unexpectedError() = _UnexpectedError;
  const factory OrderFailure.emptyList() = _EmptyList;
}
