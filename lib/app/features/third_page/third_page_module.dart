import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_introduction_app/app/features/third_page/cubit/third_page_cubit.dart';
import 'package:flutter_modular_introduction_app/app/features/third_page/third_page.dart';
class ThirdPageModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton(
          (i) => ThirdPageCubit(),
        )
      ];
  @override
  List<ModularRoute> get routes => [
        ChildRoute(ThirdPagePath.thirdPath, child: (context, args) => const ThirdPage()),
      ];
}

mixin ThirdPagePath {
  static String thirdPath = '/third';
}