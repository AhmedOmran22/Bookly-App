import 'package:bookly/core/utils/sevice_locator.dart';
import 'package:bookly/features/book%20feature/data/models/book%20model/book_model.dart';
import 'package:bookly/features/book%20feature/data/repositry/book_repo_impl.dart';
import 'package:bookly/features/book%20feature/presintation/manager/simillar%20list%20cubit/simiilar_books_cubit.dart';
import 'package:bookly/features/book%20feature/presintation/view/book_detailes_view.dart';
import 'package:bookly/features/book%20feature/presintation/view/home_view.dart';
import 'package:bookly/features/search%20feature/preseintatio/manager/cubit/search_cubit.dart';
import 'package:bookly/features/search%20feature/preseintatio/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash feature/presintation/views/splash_view.dart';

abstract class AppRouter {
  static const String kKomeView = '/HomeView';
  static const String kBookDetailesView = '/BookDetailesView';
  static const String kSeachView = '/SearchView';

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
            transitionDuration: const Duration(milliseconds: 300),
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
      GoRoute(
        path: kBookDetailesView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            transitionDuration: const Duration(milliseconds: 300),
            key: state.pageKey,
            child: BlocProvider(
              create: (context) => SimiilarBooksCubit(
                getIt.get<BookRepoImpl>(),
              ),
              child: BookDetailesView(
                bookModel: state.extra as BookModel,
              ),
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = Offset(1.0, 0.0);
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
      GoRoute(
        path: kSeachView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            transitionDuration: const Duration(milliseconds: 300),
            key: state.pageKey,
            child: BlocProvider(
              create: (context) => SearchCubit(
                getIt.get<BookRepoImpl>(),
              ),
              child: const SearchView(),
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = Offset(1.0, 0.0);
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
