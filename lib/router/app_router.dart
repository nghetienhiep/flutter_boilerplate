import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/app/di/injector.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static AppRouter get to => AppInjector.injector<AppRouter>();

  GoRouter get router;
}

class AppRouterImpl implements AppRouter {
  // static final List<RouteBase> _routes = AppRoutes.adminLayoutRoutes;
  // [
  //   ShellRoute(
  //     pageBuilder: (context, state, child) {
  //       return NoTransitionPage(
  //         child: LayoutAdminView(
  //           child: child,
  //         ),
  //       );
  //     },
  //     routes: AppRoutes.adminLayoutRoutes,
  //   ),
  //   ShellRoute(
  //     pageBuilder: (context, state, child) {
  //       return NoTransitionPage(
  //         child: child,
  //       );
  //     },
  //     routes: AppRoutes.noLayoutRoutes,
  //   ),
  // ];

  static String? _redirect(BuildContext context, GoRouterState state) {
    // String location = state.location;
    // String? currentName = RouterUtil.getNameFromLocation(location);
    //
    // if (currentName != null) {
    //   bool isAdminRoute =
    //       RouterUtil.isAllowRoute(currentName, AppRoutes.adminLayoutRoutes);
    //   if (isAdminRoute &&
    //       !RouterUtil.isAllowRoute(currentName, AppRoutes.adminLayoutMenus)) {
    //     return AppRoutes.initialLocation;
    //   }
    // }
    return null;
  }

  final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const Text('Root');
        },
      ),
      GoRoute(
        path: '/user',
        builder: (context, state) {
          return const Text('user');
        },
        routes: [
          GoRoute(
            path: ':id',
            builder: (context, state) {
              return const Text('post');
            },
          ),
        ],
      ),
    ],
  );

  @override
  GoRouter get router => _router;
}
