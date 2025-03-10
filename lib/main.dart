import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/src/config/bloc/config_bloc.dart';
import 'package:portfolio/src/config/router.dart';
import 'package:portfolio/src/utils/routes.dart';

void main() async {
  await AppRouter.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [...AppRouter.allBlocProviders()],
      child: BlocBuilder<ConfigBloc, ConfigState>(
        builder: (_, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Portfolio',
            theme: state.theme,
            darkTheme: state.darkTheme,
            themeMode: state.themeMode,
            // initialRoute: "${Routes.home}/Chinmay575",
            initialRoute: "/${Routes.codeGen}",
            onGenerateRoute: AppRouter.onGenerateRoute,
          );
        },
      ),
    );
  }
}
