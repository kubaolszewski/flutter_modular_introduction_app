import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_introduction_app/app/features/second_page/cubit/second_page_cubit.dart';
import 'package:flutter_modular_introduction_app/app/features/second_page/second_page.dart';

class SecondPageModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton(
          (i) => SecondPageCubit(),
        )
      ];
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/second', child: (context, args) => const SecondPage()),
      ];
}