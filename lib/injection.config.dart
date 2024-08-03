// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:ordo_flutter/app/order/loader/order_loader_bloc.dart' as _i1058;
import 'package:ordo_flutter/app/promo/loader/promo_loader_bloc.dart' as _i992;
import 'package:ordo_flutter/common/di/auto_route_di.dart' as _i982;
import 'package:ordo_flutter/domain/order/order.dart' as _i354;
import 'package:ordo_flutter/insfrastructure/order/data_sources/local_data_provider.dart'
    as _i561;
import 'package:ordo_flutter/insfrastructure/order/order_repository.dart'
    as _i739;
import 'package:ordo_flutter/presentation/routes/app_router.dart' as _i675;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final autoRouteDi = _$AutoRouteDi();
    gh.factory<_i992.PromoLoaderBloc>(() => _i992.PromoLoaderBloc());
    gh.factory<_i561.OrderLocalDataProvider>(
        () => _i561.OrderLocalDataProvider());
    gh.lazySingleton<_i675.AppRouter>(() => autoRouteDi.appRouter);
    gh.factory<_i354.IOrderRepository>(
        () => _i739.OrderRepository(gh<_i561.OrderLocalDataProvider>()));
    gh.factory<_i1058.OrderLoaderBloc>(
        () => _i1058.OrderLoaderBloc(gh<_i354.IOrderRepository>()));
    return this;
  }
}

class _$AutoRouteDi extends _i982.AutoRouteDi {}
