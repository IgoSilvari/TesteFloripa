import 'package:desafio_floripa/mobX/login/controller_password_view_store.dart';
import 'package:desafio_floripa/ui/login_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class Router {
  Route<dynamic> generateRoute(RouteSettings settings);
}

class AppRouter extends Router {
  static const loginPage = '/'; 

  @override
  Route generateRoute(RouteSettings settings) {
    WidgetBuilder builder;
    switch (settings.name) {
      case loginPage:
        builder = (BuildContext _) {
          return MultiProvider(
            providers: [
              Provider(create: (_) => ControllerPasswordViewStore()), 
            ],
            child: const LoginPage(),
          );
        };

      default:
        throw UnimplementedError('Invalid router: ${settings.name}');
    }
    return MaterialPageRoute(builder: builder, settings: settings);
  }
}
