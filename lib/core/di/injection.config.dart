// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:hecta/core/di/di_module.dart' as _i914;
import 'package:hecta/core/networking/network_info/network_info.dart' as _i911;
import 'package:hecta/core/routing/app_router.dart' as _i27;
import 'package:hecta/features/auth/presentation/cubit/login_cubit.dart'
    as _i283;
import 'package:hecta/features/category_details/presentation/cubit/category_details_cubit.dart'
    as _i504;
import 'package:hecta/features/home/presentation/cubit/home_cubit.dart'
    as _i487;
import 'package:hecta/features/more/presentation/cubit/more_cubit_cubit.dart'
    as _i225;
import 'package:hecta/features/orders/presentation/cubit/orders_cubit.dart'
    as _i987;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt getItInit({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final dataModule = _$DataModule();
    gh.factory<_i283.LoginCubit>(() => _i283.LoginCubit());
    gh.factory<_i504.CategoryDetailsCubit>(() => _i504.CategoryDetailsCubit());
    gh.factory<_i487.HomeCubit>(() => _i487.HomeCubit());
    gh.factory<_i225.MoreCubitCubit>(() => _i225.MoreCubitCubit());
    gh.factory<_i987.OrdersCubit>(() => _i987.OrdersCubit());
    gh.singleton<_i27.AppRouter>(() => _i27.AppRouter());
    gh.lazySingleton<_i911.NetworkInfo>(() => dataModule.provideNetworkInfo());
    return this;
  }
}

class _$DataModule extends _i914.DataModule {}
