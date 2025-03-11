import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:portfolio/src/config/bloc/config_bloc.dart';
import 'package:portfolio/src/presentation/views/auth/login_page.dart';
import 'package:portfolio/src/presentation/views/auth/register_page.dart';
import 'package:portfolio/src/presentation/views/code_gen/bloc/code_gen_bloc.dart';
import 'package:portfolio/src/presentation/views/code_gen/code_gen.dart';
import 'package:portfolio/src/presentation/views/error/page_not_found.dart';
import 'package:portfolio/src/presentation/views/error/user_not_found.dart';
import 'package:portfolio/src/presentation/views/edit/edit_page.dart';
import 'package:portfolio/src/presentation/views/home/home_page.dart';
import 'package:portfolio/src/utils/routes.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    FlutterNativeSplash.remove();
    if (settings.name != null) {
      String nextRoute = settings.name!;

      print("route info: $nextRoute");

      Uri uri = Uri.parse(settings.name!);

      List<String> segments = uri.pathSegments;
      Map<String, String> data = uri.queryParameters;
      print("data: ${uri.query.split('&')}");
      print("data: ${data}");

      print(segments);

      Widget w = const UrlNotFoundPage();

      if (segments.isNotEmpty) {
        switch (segments.first) {
          case Routes.login:
            w = const LoginPage();
            break;
          case Routes.register:
            w = const RegisterPage();
            break;
          case Routes.codeGen:
            w = CodeGenScreen();
          default:
            print("default case");
            if (segments.length >= 2) {
              if (segments.length == 2 && segments[1] == Routes.edit) {
                w = const EditPage();
              }
            } else if (segments.length == 1) {
              if (segments[0] == "Chinmay575") {
                if (data.containsKey("code") && data.containsKey("state")) {
                  w = CodeGenScreen();
                } else {
                  w = HomePage();
                }
              } else {
                w = const UserNotFoundPage();
              }
            }
            break;
        }
      }
      print("Final route ${w.runtimeType}");
      return MaterialPageRoute(
        builder: (context) => w,
        settings: RouteSettings(name: nextRoute),
      );
    }
    return MaterialPageRoute(
      builder: (context) => const UrlNotFoundPage(),
    );
  }

  static List<dynamic> allBlocProviders() => [
        BlocProvider(
          create: (_) => ConfigBloc()..add(LoadBackground()),
        ),
        BlocProvider(
          create: (_) => CodeGenBloc(),
        ),
      ];

  static Future init() async {
    WidgetsBinding bindings = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: bindings);
  }
}

class AppRoute {
  String name;
  Widget view;
  AppRoute({
    required this.name,
    required this.view,
  });
}
