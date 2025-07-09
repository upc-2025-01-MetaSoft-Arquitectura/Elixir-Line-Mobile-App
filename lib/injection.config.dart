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
import 'package:myapp/3-tasks/application/evidences/evidence_bloc.dart'
    as _i292;
import 'package:myapp/3-tasks/application/incidents/incident_bloc.dart' as _i84;
import 'package:myapp/3-tasks/application/task_bloc.dart' as _i685;
import 'package:myapp/3-tasks/domain/evidences/i_evidence_repository.dart'
    as _i388;
import 'package:myapp/3-tasks/domain/i_task_repository.dart' as _i410;
import 'package:myapp/3-tasks/domain/incidents/i_incident_repository.dart'
    as _i535;
import 'package:myapp/3-tasks/infrastructure/evidence_repository.dart' as _i77;
import 'package:myapp/3-tasks/infrastructure/incident_repository.dart' as _i873;
import 'package:myapp/3-tasks/infrastructure/task_repository.dart' as _i578;
import 'package:myapp/5-profile/application/profile_bloc.dart' as _i1072;
import 'package:myapp/5-profile/domain/i_profile_repository.dart' as _i227;
import 'package:myapp/5-profile/infrastructure/profile_repository.dart'
    as _i1044;
import 'package:myapp/shared/infrastructure/auth_storage.dart' as _i224;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i224.AuthStorage>(() => _i224.AuthStorage());
    gh.lazySingleton<_i91.IAuthFacade>(() => _i1044.RestAuthFacade());
    gh.lazySingleton<_i410.ITaskRepository>(() => _i578.TaskRepository());
    gh.lazySingleton<_i535.IIncidentRepository>(
      () => _i873.IncidentRepository(gh<_i224.AuthStorage>()),
    );
    gh.lazySingleton<_i388.IEvidenceRepository>(
      () => _i77.EvidenceRepository(gh<_i224.AuthStorage>()),
    );
    gh.lazySingleton<_i227.IProfileRepository>(
      () => _i1044.ProfileRepository(),
    );
    gh.factory<_i1072.ProfileBloc>(
      () => _i1072.ProfileBloc(gh<_i227.IProfileRepository>()),
    );
    gh.factory<_i292.EvidenceBloc>(
      () => _i292.EvidenceBloc(gh<_i388.IEvidenceRepository>()),
    );
    gh.factory<_i685.TaskBloc>(
      () =>
          _i685.TaskBloc(gh<_i410.ITaskRepository>(), gh<_i224.AuthStorage>()),
    );
    gh.factory<_i228.SignInFormBloc>(
      () => _i228.SignInFormBloc(gh<_i91.IAuthFacade>()),
    );
    gh.factory<_i647.AuthBloc>(() => _i647.AuthBloc(gh<_i91.IAuthFacade>()));
    gh.factory<_i84.IncidentBloc>(
      () => _i84.IncidentBloc(gh<_i535.IIncidentRepository>()),
    );
    return this;
  }
}
