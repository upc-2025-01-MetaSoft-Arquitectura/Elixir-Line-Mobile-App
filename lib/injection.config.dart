// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:myapp/auth/application/auth_bloc.dart' as _i142;
import 'package:myapp/auth/application/sign_in_form/sign_in_form_bloc.dart'
    as _i912;
import 'package:myapp/auth/domain/i_auth_facade.dart' as _i374;
import 'package:myapp/auth/infrastructure/api_rest_auth_facade.dart' as _i186;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i374.IAuthFacade>(() => _i186.RestAuthFacade());
    gh.factory<_i912.SignInFormBloc>(
      () => _i912.SignInFormBloc(gh<_i374.IAuthFacade>()),
    );
    gh.factory<_i142.AuthBloc>(() => _i142.AuthBloc(gh<_i374.IAuthFacade>()));
    return this;
  }
}
