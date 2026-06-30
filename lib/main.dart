import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radwa_back/Features/Home/data/repos/home_repo_imp.dart';
import 'package:radwa_back/Features/Home/presentation/views/view_model/feature_cubit/feature_books_cubit.dart';
import 'package:radwa_back/Features/Home/presentation/views/view_model/newest_books/newest_books_cubit.dart';
import 'package:radwa_back/constans.dart';
import 'package:radwa_back/core/app_routers.dart';
import 'package:radwa_back/core/utils/service_locator.dart';

void main() {
  setUpServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatureBooksCubit(getIt.get<HomeReoImpl>())..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(getIt.get<HomeReoImpl>())..fetchNewestBooks(),
        ),
        
      ],
      child: MaterialApp.router(
        showSemanticsDebugger: false,
        showPerformanceOverlay: false,

        routerConfig: router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}
