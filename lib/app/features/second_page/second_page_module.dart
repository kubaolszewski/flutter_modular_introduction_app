import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_introduction_app/app/features/second_page/cubit/second_page_cubit.dart';
import 'package:flutter_modular_introduction_app/app/features/second_page/second_page.dart';
import 'package:flutter_modular_introduction_app/app_module.dart';

class SecondPageModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton(
          (i) => SecondPageCubit(),
        )
      ];
  @override
  List<ModularRoute> get routes => [
        ChildRoute(SecondPagePath.secondScreenPath,
            child: (context, args) => const SecondPage()),
      ];
}

mixin SecondPagePath {
  static String main = AppModulesPath.secondPageModulesPath;
  static String secondScreenPath = '/second-page';

  static String secondPath = '$main$secondScreenPath';
}
