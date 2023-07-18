import 'package:desafio_floripa/router.dart';
import 'package:desafio_floripa/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const FloripaApp());

class FloripaApp extends StatefulWidget {
  const FloripaApp({super.key});

  @override
  State<FloripaApp> createState() => _FloripaAppState();
}

class _FloripaAppState extends State<FloripaApp> {
  final router = AppRouter();

  @override
  void initState() {
    systemDefaut();
    super.initState();
  }

  void systemDefaut() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desafio Floripa',
      debugShowCheckedModeBanner: false,
      theme: FloripaThemes.appTheme(context: context),
      onGenerateRoute: router.generateRoute,
    );
  }
}
