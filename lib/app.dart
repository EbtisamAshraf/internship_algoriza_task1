
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internship_algoriza_task1/config/routes/app_routes.dart';
import 'package:internship_algoriza_task1/config/themes/app_theme.dart';
import 'package:internship_algoriza_task1/core/app_cubit/cubit/app_cubit.dart';
import 'package:internship_algoriza_task1/core/sql_db.dart';
import 'package:internship_algoriza_task1/core/utils/app_strings.dart';
import 'package:internship_algoriza_task1/features/counter/presentation/pages/counter_screen.dart';
import 'package:internship_algoriza_task1/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:internship_algoriza_task1/features/users/presentation/pages/users_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) =>  AppCubit(SqlDb())..getData()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppStrings.appName,
        theme: appTheme(),
        home:   UsersScreen(),
        onGenerateRoute: RouteGenerator.getRoute,
      ),
    );
  }
}
