import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_introduction_app/app/features/first_page/cubit/first_page_cubit.dart';
import 'package:flutter_modular_introduction_app/app/features/first_page/first_page.dart';
import 'package:flutter_modular_introduction_app/app/features/first_page/first_second_screen/first_second_screen.dart';
import 'package:flutter_modular_introduction_app/app_module.dart';

class FirstPageModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton(
          (i) => FirstPageCubit(),
        )
      ];
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          FirstPagePath.main,
          child: (context, args) => const FirstPage(),
        ),
        ChildRoute(FirstPagePath.secondScreenPath, child: (context, args) => const FirstSecondPage()),
      ];
}

mixin FirstPagePath {
  static String main = '/';
  static String superPath = AppModulesPath.firstPageModulesPath;
  static String secondScreenPath = '/second-page';

  static String secondPath = '$superPath$secondScreenPath';
}
