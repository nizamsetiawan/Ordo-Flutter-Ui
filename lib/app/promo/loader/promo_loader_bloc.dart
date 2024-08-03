import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../presentation/components/gen/assets.gen.dart';

part 'promo_loader_event.dart';
part 'promo_loader_state.dart';
part 'promo_loader_bloc.freezed.dart';

@injectable
class PromoLoaderBloc extends Bloc<PromoLoaderEvent, PromoLoaderState> {
  PromoLoaderBloc() : super(const PromoLoaderState.initial()) {
    on<PromoLoaderEvent>(_onPromoLoaderEvent);
  }

  Future<void> _onPromoLoaderEvent(
    PromoLoaderEvent event,
    Emitter<PromoLoaderState> emit,
  ) {
    return event.map(
      fetched: (e) async {
        emit(const PromoLoaderState.loadInProgress());

        await Future.delayed(const Duration(seconds: 1));

        final images = <Image>[
          Assets.images.imgBanner.image(),
          Assets.images.imgBanner.image(),
          Assets.images.imgBanner.image(),
        ];

        emit(PromoLoaderState.loadSuccess(images));
      },
    );
  }
}
