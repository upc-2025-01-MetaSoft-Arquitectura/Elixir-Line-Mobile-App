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
import 'package:myapp/1_auth/application/auth_bloc.dart' as _i413;
import 'package:myapp/1_auth/application/sign_in_form/sign_in_form_bloc.dart'
    as _i970;
import 'package:myapp/1_auth/domain/i_auth_facade.dart' as _i637;
import 'package:myapp/1_auth/infrastructure/api_rest_auth_facade.dart' as _i725;
import 'package:myapp/3_tasks/application/evidences/evidence_bloc.dart'
    as _i434;
import 'package:myapp/3_tasks/application/incidents/incident_bloc.dart'
    as _i682;
import 'package:myapp/3_tasks/application/task_bloc.dart' as _i619;
import 'package:myapp/3_tasks/domain/evidences/i_evidence_repository.dart'
    as _i807;
import 'package:myapp/3_tasks/domain/i_task_repository.dart' as _i895;
import 'package:myapp/3_tasks/domain/incidents/i_incident_repository.dart'
    as _i525;
import 'package:myapp/3_tasks/infrastructure/evidence_repository.dart' as _i79;
import 'package:myapp/3_tasks/infrastructure/incident_repository.dart' as _i22;
import 'package:myapp/3_tasks/infrastructure/task_repository.dart' as _i204;
import 'package:myapp/5_profile/application/profile_bloc.dart' as _i342;
import 'package:myapp/5_profile/domain/i_profile_repository.dart' as _i496;
import 'package:myapp/5_profile/infrastructure/profile_repository.dart'
    as _i417;
import 'package:myapp/shared/infrastructure/auth_storage.dart' as _i224;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i224.AuthStorage>(() => _i224.AuthStorage());
    gh.lazySingleton<_i637.IAuthFacade>(() => _i725.RestAuthFacade());
    gh.lazySingleton<_i807.IEvidenceRepository>(
      () => _i79.EvidenceRepository(gh<_i224.AuthStorage>()),
    );
    gh.lazySingleton<_i496.IProfileRepository>(() => _i417.ProfileRepository());
    gh.factory<_i413.AuthBloc>(() => _i413.AuthBloc(gh<_i637.IAuthFacade>()));
    gh.factory<_i970.SignInFormBloc>(
      () => _i970.SignInFormBloc(gh<_i637.IAuthFacade>()),
    );
    gh.lazySingleton<_i895.ITaskRepository>(() => _i204.TaskRepository());
    gh.lazySingleton<_i525.IIncidentRepository>(
      () => _i22.IncidentRepository(gh<_i224.AuthStorage>()),
    );
    gh.factory<_i342.ProfileBloc>(
      () => _i342.ProfileBloc(gh<_i496.IProfileRepository>()),
    );
    gh.factory<_i434.EvidenceBloc>(
      () => _i434.EvidenceBloc(gh<_i807.IEvidenceRepository>()),
    );
    gh.factory<_i682.IncidentBloc>(
      () => _i682.IncidentBloc(gh<_i525.IIncidentRepository>()),
    );
    gh.factory<_i619.TaskBloc>(
      () =>
          _i619.TaskBloc(gh<_i895.ITaskRepository>(), gh<_i224.AuthStorage>()),
    );
    return this;
  }
}
