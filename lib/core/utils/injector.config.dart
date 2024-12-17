// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:annual_leave/core/network/dio_client.dart' as _i632;
import 'package:annual_leave/src/apps/tmwn_dash/home/data/datasource/remote.dart'
    as _i1006;
import 'package:annual_leave/src/apps/tmwn_dash/home/presentation/cubit/family_cubit.dart'
    as _i949;
import 'package:annual_leave/src/apps/tmwn_dash/onboarding/data/datasource/remote.dart'
    as _i815;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

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
    gh.factory<_i815.AppConfigDataSource>(() => _i815.AppConfigDataSource());
    gh.factory<_i1006.FamilyDataSource>(() => _i1006.FamilyDataSource());
    gh.singleton<_i949.FamilyCubit>(() => _i949.FamilyCubit());
    gh.lazySingleton<_i632.DioClient>(() => _i632.DioClient());
    return this;
  }
}
