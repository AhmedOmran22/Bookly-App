import 'package:bookly/features/book%20feature/presintation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash feature/presintation/views/splash_view.dart';

abstract class AppRouter {
  static const String kKomeView = '/HomeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kKomeView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            transitionDuration: const Duration(milliseconds: 800),
            key: state.pageKey,
            child: const HomeView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = Offset(0.0, 1.0);
              const end = Offset.zero;
              final tween = Tween(begin: begin, end: end);
              final offsetAnimation = animation.drive(tween);
              return SlideTransition(
                position: offsetAnimation,
                child: child,
              );
            },
          );
        },
      ),
    ],
  );
}
