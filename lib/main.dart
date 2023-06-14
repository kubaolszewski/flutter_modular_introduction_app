import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_introduction_app/app/features/first_page/first_page.dart';
import 'package:flutter_modular_introduction_app/app/features/second_page/second_page.dart';
import 'package:flutter_modular_introduction_app/app/features/third_page/third_page.dart';
import 'package:flutter_modular_introduction_app/app/home_page.dart';

void main() {
  return runApp(ModularApp(module: AppModule(), child: const MyApp()));
}

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
        ChildRoute('/first', child: (context, args) => const FirstPage()),
        ChildRoute('/second', child: (context, args) => const SecondPage()),
        ChildRoute('/third', child: (context, args) => const ThirdPage()),
      ];
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple, useMaterial3: true),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
