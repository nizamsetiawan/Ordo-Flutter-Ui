part of 'promo_loader_bloc.dart';

@freezed
sealed class PromoLoaderEvent with _$PromoLoaderEvent {
  const factory PromoLoaderEvent.fetched() = _Fetched;
}
