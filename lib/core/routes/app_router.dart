import 'package:bookia_app/core/routes/routes.dart';
import 'package:bookia_app/features/home/presention/ui/home_screen.dart';
import 'package:bookia_app/features/login_screen/presentation/cubit/cubit/login_cubit.dart';
import 'package:bookia_app/features/login_screen/presentation/ui/login_screen.dart';
import 'package:bookia_app/features/register/presentation/ui/register_screen.dart';
import 'package:bookia_app/features/welcome/presentation/ui/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LoginCubit(),
            child: const LoginScreen(),
          ),
        );
      case Routes.registerScreen:
        return MaterialPageRoute(builder: (context) => const RegisterScreen());
      case Routes.welcomeScreen:
        return MaterialPageRoute(builder: (context) => const WelcomeScreen());
        case Routes.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(body: Center(child: Text('404 \n Page Not Found'))),
        );
    }
  }
}
