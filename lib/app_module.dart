import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_introduction_app/app/features/first_page/first_page_module.dart';
import 'package:flutter_modular_introduction_app/app/features/second_page/second_page_module.dart';
import 'package:flutter_modular_introduction_app/app/features/third_page/third_page_module.dart';

class AppModule extends Module {

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(AppModulesPath.firstPageModulesPath, module: FirstPageModule()),
        ModuleRoute(AppModulesPath.secondPageModulesPath, module: SecondPageModule()),
        ModuleRoute(AppModulesPath.thirdPageModulesPath, module: ThirdPageModule())
      ];
}

mixin AppModulesPath {
  static String firstPageModulesPath = '/';
  static String secondPageModulesPath = '/second';
  static String thirdPageModulesPath = '/third';
}