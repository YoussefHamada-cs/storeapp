import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Page<dynamic> buildTransitions(BuildContext context, GoRouterState state, Widget child) {
  return CustomTransitionPage<dynamic>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, primaryAnimation, secondaryAnimation, child) {
      // هذا الجزء مطابق لـ BaseRoute
      const begin = 0.0;
      const end = 1.0;
      final tween = Tween(begin: begin, end: end);
      final curvedAnimation = CurvedAnimation(
        parent: primaryAnimation,
        curve: Curves.linearToEaseOut,
      );

      return ScaleTransition(
        scale: tween.animate(curvedAnimation),
        child: child,
      );
    },
  );
}