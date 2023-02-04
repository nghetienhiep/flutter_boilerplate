// import 'package:flutter/material.dart';
// import 'package:flutter_boilerplate/app/di/injector.dart';
// import 'package:go_router/go_router.dart';
//
// enum RouteKeys {
//   root('/'),
//   user('/user'),
//   post('post'),
//   login('/login');
//
//   final String path;
//
//   const RouteKeys(this.path);
// }
//
// class AppRoute extends GoRoute {
//   AppRoute({
//     required super.path,
//     required super.pageBuilder,
//     required super.name,
//     super.redirect,
//     super.builder,
//     this.icon,
//     this.label,
//     this.children = const <AppRoute>[],
//   }) : super(
//           routes: children,
//         );
//
//   final IconData? icon;
//   final String? label;
//   final List<AppRoute> children;
// }
//
// class AppRoutes {
//   static S get i10n => AppInjector.injector<S>();
//
//   static final String initialLocation = RouteKeys.root.path;
//
//   static List<GoRoute> get adminLayoutRoutes => [
//         GoRoute(
//           // icon: Icons.home,
//           // label: i10n.home,
//           path: '/',
//           name: 'root',
//           pageBuilder: (context, state) {
//             return const NoTransitionPage(
//               child: HomeView(),
//             );
//           },
//         ),
//         GoRoute(
//           // icon: Icons.access_alarm_outlined,
//           // label: i10n.login,
//           path: '/user',
//           name: 'user',
//           pageBuilder: (context, state) {
//             return const NoTransitionPage(
//               child: UserView(),
//             );
//           },
//           routes: [
//             GoRoute(
//                 // label: i10n.home,
//                 path: 'post',
//                 name: 'post',
//                 builder: (_, __) {
//                   return Text('aaaa');
//                 }
//                 // pageBuilder: (context, state) {
//                 //   return const NoTransitionPage(
//                 //     child: Text('aaaa'),
//                 //   );
//                 // },
//                 ),
//           ],
//         ),
//       ];
//
//   static List<AppRoute> get noLayoutRoutes => [
//         AppRoute(
//           path: RouteKeys.login.path,
//           name: RouteKeys.login.name,
//           pageBuilder: (context, state) {
//             return const NoTransitionPage(
//               child: LoginView(),
//             );
//           },
//         ),
//       ];
//
//   static List<AppRoute> get adminLayoutMenus => [];
//   // RouterUtil.getMenuRoutes(
//   //   RouterUtil.flattenRoutes(adminLayoutRoutes),
//   // );
// }
