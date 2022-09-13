import 'package:cubit_state_management_with_gridview/cubit/home/home_cubit.dart';
import 'package:cubit_state_management_with_gridview/cubit/home/home_repository.dart';
import 'package:cubit_state_management_with_gridview/cubit/splash/splash_cubit.dart';
import 'package:cubit_state_management_with_gridview/presentation/home_screen.dart';
import 'package:cubit_state_management_with_gridview/presentation/splash_screen.dart';
import 'package:cubit_state_management_with_gridview/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  SplashCubit? splashCubit;
  HomeCubit? homeCubit;

  AppRouter() {
    splashCubit = SplashCubit();
    homeCubit = HomeCubit(repository: HomeRepository());
  }

  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: splashCubit!,
            child: SplashScreen(),
          ),
        );
      case HOME_SCREEN:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: homeCubit!,
            child: HomeScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: splashCubit!,
            child: SplashScreen(),
          ),
        );
    }
  }
}
