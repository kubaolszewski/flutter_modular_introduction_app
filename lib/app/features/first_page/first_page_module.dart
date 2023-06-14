import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_introduction_app/app/features/first_page/cubit/first_page_cubit.dart';
import 'package:flutter_modular_introduction_app/app/features/first_page/first_page.dart';

class FirstPageModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton(
          (i) => FirstPageCubit(),
        )
      ];
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const FirstPage()),
      ];
}
