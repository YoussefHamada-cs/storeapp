import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:storeapp/core/app_router/app_routes.dart';
import 'package:storeapp/core/app_router/base_roures.dart';
import 'package:storeapp/core/app_router/mainPages/main_pages.dart';

import 'package:storeapp/features/auth/presentation/views/login_view.dart';
import 'package:storeapp/features/auth/presentation/views/sign_up_view.dart';

class AppRouter {
 
  final GoRouter router = GoRouter(
    initialLocation: AppPaths.login,

    routes: [
      // ==================== Auth Routes ====================
      GoRoute(
        path: AppPaths.login,
        name: AppRoutes.login,
        pageBuilder:
            (context, state) => buildTransitions(context, state, const LoginView()),
      ),
      GoRoute(
        path: AppPaths.signUp,
        name: AppRoutes.signUp,
        pageBuilder:
            (context, state) => buildTransitions(context, state, const SignUpView()),
      ),
      // ==================== Main Shell Route (Bottom Navigation) ====================
      ShellRoute(
        builder: (context, state, child) {
          return MainPage(child: child);
        },
        routes: [
          // ==================== Home Tab Routes ====================
          GoRoute(
            path: AppPaths.home,
            name: AppRoutes.home,
            pageBuilder:
                (context, state) =>
                    buildTransitions(context, state, Scaffold()),
          ),

          // ==================== Detail Route with Custom Transition ====================
          GoRoute(
            path: AppPaths.detail,
            name: AppRoutes.detail,
            pageBuilder:
                (context, state) => buildTransitions(context, state, Scaffold()),
          ),

          // ==================== Search Tab Route ====================
          GoRoute(
            path: AppPaths.search,
            name: AppRoutes.search,
            pageBuilder:
                (context, state) => buildTransitions(
                  context,
                  state,
                  const Scaffold(body: Center(child: Text('Search'))),
                ),
          ),

          // ==================== Notification Tab Route ====================
          GoRoute(
            path: AppPaths.notification,
            name: AppRoutes.notification,
            pageBuilder:
                (context, state) => buildTransitions(
                  context,
                  state,
                  const Scaffold(body: Center(child: Text('Notification'))),
                ),
          ),

          // ==================== Profile Tab Route ====================
          GoRoute(
            path: AppPaths.profile,
            name: AppRoutes.profile,
            pageBuilder:
                (context, state) => buildTransitions(
                  context,
                  state,
                  const Scaffold(body: Center(child: Text('Profile'))),
                ),
          ),

          // ==================== Profile Edit Route ====================
          GoRoute(
            path: AppPaths.profileEdit,
            name: AppRoutes.profileEdit,
            pageBuilder:
                (context, state) => buildTransitions(
                  context,
                  state,
                  const Scaffold(body: Center(child: Text('Profile Edit'))),
                ),
          ),

          // ==================== Bookmark Tab Route ====================
          GoRoute(
            path: AppPaths.bookmark,
            name: AppRoutes.bookmark,
            pageBuilder:
                (context, state) => buildTransitions(
                  context,
                  state,
                  const Scaffold(body: Center(child: Text('BookMark'))),
                ),
          ),
        ],
      ),
    ],
  );
}
