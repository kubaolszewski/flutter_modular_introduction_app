import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_introduction_app/app/features/third_page/cubit/third_page_cubit.dart';
import 'package:flutter_modular_introduction_app/app/features/third_page/third_page.dart';
import 'package:flutter_modular_introduction_app/app_module.dart';
class ThirdPageModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton(
          (i) => ThirdPageCubit(),
        )
      ];
  @override
  List<ModularRoute> get routes => [
        ChildRoute(ThirdPagePath.thirdScreenPath, child: (context, args) => const ThirdPage()),
      ];
}

mixin ThirdPagePath {
  static String main = AppModulesPath.thirdPageModulesPath;
  static String thirdScreenPath = '/third-page';

  static String thirdPath = '$main$thirdScreenPath';
}