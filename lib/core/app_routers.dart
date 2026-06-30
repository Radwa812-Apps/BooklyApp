import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:radwa_back/Features/Home/data/repos/home_repo.dart';
import 'package:radwa_back/Features/Home/data/repos/home_repo_imp.dart';
import 'package:radwa_back/Features/Home/presentation/views/book_details_view.dart';
import 'package:radwa_back/Features/Home/presentation/views/home_view.dart';
import 'package:radwa_back/Features/Home/presentation/views/view_model/similar/simlar_book_cubit.dart';
import 'package:radwa_back/Features/Splash/presentation/views/splash_view.dart';
import 'package:radwa_back/Features/search/presentation/view_model/search/search_result_cubit.dart';
import 'package:radwa_back/Features/search/presentation/views/search_result_view.dart';
import 'package:radwa_back/core/utils/service_locator.dart';

abstract class AppRouters {
  static String bookDetailsView = "/details";
  static String homeView = "/home";
  static String searchResult = "/search";
}

/// The route configuration.
final GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
    ),

    GoRoute(
      path: AppRouters.homeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: AppRouters.bookDetailsView,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider(
          create: (context) =>
              SimlarBookCubit(getIt.get<HomeReoImpl>())..fetchSimilarBooks(),
          child: BookDetailsView(),
        );
      },
    ),
    GoRoute(
      path: AppRouters.searchResult,
      builder: (context, state) => BlocProvider(
        create: (context) => SearchResultCubit(getIt.get<HomeReoImpl>()),
        child: const SearchResultView(),
      ),
    ),
  ],
);
