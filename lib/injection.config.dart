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
import 'package:myapp/1-auth/application/auth_bloc.dart' as _i647;
import 'package:myapp/1-auth/application/sign_in_form/sign_in_form_bloc.dart'
    as _i228;
import 'package:myapp/1-auth/domain/i_auth_facade.dart' as _i91;
import 'package:myapp/1-auth/infrastructure/api_rest_auth_facade.dart'
    as _i1044;
import 'package:myapp/5-profile/application/profile_bloc.dart' as _i1072;
import 'package:myapp/5-profile/domain/i_profile_repository.dart' as _i227;
import 'package:myapp/5-profile/infrastructure/profile_repository.dart'
    as _i1044;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i91.IAuthFacade>(() => _i1044.RestAuthFacade());
    gh.lazySingleton<_i227.IProfileRepository>(
      () => _i1044.ProfileRepository(),
    );
    gh.factory<_i1072.ProfileBloc>(
      () => _i1072.ProfileBloc(gh<_i227.IProfileRepository>()),
    );
    gh.factory<_i228.SignInFormBloc>(
      () => _i228.SignInFormBloc(gh<_i91.IAuthFacade>()),
    );
    gh.factory<_i647.AuthBloc>(() => _i647.AuthBloc(gh<_i91.IAuthFacade>()));
    return this;
  }
}
