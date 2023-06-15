import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_introduction_app/app/features/first_page/cubit/first_page_cubit.dart';
import 'package:flutter_modular_introduction_app/app/features/first_page/first_page.dart';
import 'package:flutter_modular_introduction_app/app_module.dart';

class FirstPageModule extends Module{
  @override
  List<Bind> get binds => [
        Bind.singleton(
          (i) => FirstPageCubit(),
        )
      ];
  @override
  List<ModularRoute> get routes => [
        ChildRoute(FirstPagePath.firstScreenPath, child: (context, args) => const FirstPage()),
      ];
}


mixin FirstPagePath {
  static String main = '/';
  static String superPath = AppModulesPath.firstPageModulesPath;
  static String firstScreenPath = '/first-page';
  static String firstPath = '$main$superPath/$firstScreenPath';
}