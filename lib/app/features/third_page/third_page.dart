import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_modular_introduction_app/app/common_widgets/custom_appbar.dart';
import 'package:flutter_modular_introduction_app/app/features/first_page/first_page_module.dart';
import 'package:flutter_modular_introduction_app/app/features/second_page/second_page_module.dart';
import 'package:flutter_modular_introduction_app/app/features/third_page/cubit/third_page_cubit.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    ThirdPageCubit thirdPageCubit = Modular.get<ThirdPageCubit>();
    return Scaffold(
      appBar:  CustomAppBar(title: AppLocalizations.of(context)!.thirdPageHeader),
      body: Container(
        color: Colors.orange,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               Text(
                AppLocalizations.of(context)!.thirdPage,
                style: const TextStyle(color: Colors.white, fontSize: 24),
              ),
              ElevatedButton(
                  onPressed: () {
                    Modular.to.pushReplacementNamed(FirstPagePath.firstPath);
                    thirdPageCubit.statusCheck();
                  },
                  child:  Text(AppLocalizations.of(context)!.firstPageNav)),
              ElevatedButton(
                  onPressed: () {
                    Modular.to.pushReplacementNamed(SecondPagePath.secondPath);
                    thirdPageCubit.statusCheck();
                  },
                  child:  Text(AppLocalizations.of(context)!.secondPageNav))
            ],
          ),
        ),
      ),
    );
  }
}
