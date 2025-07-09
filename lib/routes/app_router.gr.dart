// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:myapp/1-auth/presentation/sign_in_page.dart' as _i6;
import 'package:myapp/2-home/presentation/home_page.dart' as _i2;
import 'package:myapp/3-tasks/domain/task.dart' as _i12;
import 'package:myapp/3-tasks/presentation/pages/empty_router_page.dart' as _i1;
import 'package:myapp/3-tasks/presentation/pages/task_detail_wrapper.dart'
    as _i7;
import 'package:myapp/3-tasks/presentation/pages/tasks_page.dart' as _i8;
import 'package:myapp/3-tasks/presentation/pages/tasks_route.dart' as _i9;
import 'package:myapp/4-map/presentation/map_page.dart' as _i4;
import 'package:myapp/5-profile/presentation/profile_page.dart' as _i5;
import 'package:myapp/routes/main_page.dart' as _i3;

/// generated route for
/// [_i1.EmptyRouterPage]
class EmptyRouterRoute extends _i10.PageRouteInfo<void> {
  const EmptyRouterRoute({List<_i10.PageRouteInfo>? children})
    : super(EmptyRouterRoute.name, initialChildren: children);

  static const String name = 'EmptyRouterRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i1.EmptyRouterPage();
    },
  );
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.MainPage]
class MainRoute extends _i10.PageRouteInfo<void> {
  const MainRoute({List<_i10.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i3.MainPage();
    },
  );
}

/// generated route for
/// [_i4.MapPage]
class MapRoute extends _i10.PageRouteInfo<void> {
  const MapRoute({List<_i10.PageRouteInfo>? children})
    : super(MapRoute.name, initialChildren: children);

  static const String name = 'MapRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i4.MapPage();
    },
  );
}

/// generated route for
/// [_i5.ProfilePage]
class ProfileRoute extends _i10.PageRouteInfo<void> {
  const ProfileRoute({List<_i10.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i5.ProfilePage();
    },
  );
}

/// generated route for
/// [_i6.SignInPage]
class SignInRoute extends _i10.PageRouteInfo<void> {
  const SignInRoute({List<_i10.PageRouteInfo>? children})
    : super(SignInRoute.name, initialChildren: children);

  static const String name = 'SignInRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i6.SignInPage();
    },
  );
}

/// generated route for
/// [_i7.TaskDetailWrapperPage]
class TaskDetailWrapperRoute
    extends _i10.PageRouteInfo<TaskDetailWrapperRouteArgs> {
  TaskDetailWrapperRoute({
    _i11.Key? key,
    required _i12.Task task,
    List<_i10.PageRouteInfo>? children,
  }) : super(
         TaskDetailWrapperRoute.name,
         args: TaskDetailWrapperRouteArgs(key: key, task: task),
         initialChildren: children,
       );

  static const String name = 'TaskDetailWrapperRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TaskDetailWrapperRouteArgs>();
      return _i7.TaskDetailWrapperPage(key: args.key, task: args.task);
    },
  );
}

class TaskDetailWrapperRouteArgs {
  const TaskDetailWrapperRouteArgs({this.key, required this.task});

  final _i11.Key? key;

  final _i12.Task task;

  @override
  String toString() {
    return 'TaskDetailWrapperRouteArgs{key: $key, task: $task}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! TaskDetailWrapperRouteArgs) return false;
    return key == other.key && task == other.task;
  }

  @override
  int get hashCode => key.hashCode ^ task.hashCode;
}

/// generated route for
/// [_i8.TaskPage]
class TaskRoute extends _i10.PageRouteInfo<void> {
  const TaskRoute({List<_i10.PageRouteInfo>? children})
    : super(TaskRoute.name, initialChildren: children);

  static const String name = 'TaskRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i8.TaskPage();
    },
  );
}

/// generated route for
/// [_i9.TasksRoute]
class TasksRoute extends _i10.PageRouteInfo<void> {
  const TasksRoute({List<_i10.PageRouteInfo>? children})
    : super(TasksRoute.name, initialChildren: children);

  static const String name = 'TasksRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i9.TasksRoute();
    },
  );
}
