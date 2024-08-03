part of 'promo_loader_bloc.dart';

@freezed
sealed class PromoLoaderState with _$PromoLoaderState {
  const factory PromoLoaderState.initial() = _Initial;
  const factory PromoLoaderState.loadInProgress() = _LoadInProgress;
  const factory PromoLoaderState.loadFailure() = _LoadFailure;
  const factory PromoLoaderState.loadSuccess(List<Image> images) = _LoadSuccess;
}
