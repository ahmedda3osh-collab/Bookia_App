import 'package:bookia_app/core/routes/app_router.dart';
import 'package:bookia_app/core/routes/routes.dart';
import 'package:bookia_app/core/theme/cubit/cubit/theme_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookiaApp extends StatelessWidget {
  final String? token;
  const BookiaApp({super.key, this.token});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,

      builder: (_, child) {
        return BlocProvider(
          create: (context) => ThemeCubit(),
          child: BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              return MaterialApp(
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
                debugShowCheckedModeBanner: false,
                theme:context.read<ThemeCubit>().appTheme,
                onGenerateRoute: AppRouter.onGenerateRoute,
                initialRoute:token==null? Routes.welcomeScreen:Routes.homeScreen,
              );
            },
          ),
        );
      },
    );
  }
}
