import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_modular_introduction_app/app/common_widgets/custom_appbar.dart';
import 'package:flutter_modular_introduction_app/app/features/first_page/cubit/first_page_cubit.dart';
import 'package:flutter_modular_introduction_app/app/features/first_page/first_page_module.dart';
import 'package:flutter_modular_introduction_app/app/features/second_page/second_page_module.dart';
import 'package:flutter_modular_introduction_app/app/features/third_page/third_page_module.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    FirstPageCubit firstPageCubit = Modular.get<FirstPageCubit>();
    return Scaffold(
      appBar:  CustomAppBar(title: AppLocalizations.of(context)!.firstPageHeader),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                AppLocalizations.of(context)!.firstPage,
                style: const TextStyle(color: Colors.white, fontSize: 24),
              ),
              ElevatedButton(
                  onPressed: () {
                    Modular.to.pushReplacementNamed(SecondPagePath.secondPath);
                    firstPageCubit.statusCheck();
                  },
                  child:  Text(AppLocalizations.of(context)!.secondPageNav)),
              ElevatedButton(
                  onPressed: () {
                    Modular.to.pushNamed(FirstPagePath.secondScreenPath);
                    firstPageCubit.statusCheck();
                  },
                  child:  Text(AppLocalizations.of(context)!.firstSecondPageNav)),
              ElevatedButton(
                  onPressed: () {
                    Modular.to.pushReplacementNamed(ThirdPagePath.thirdPath);
                    firstPageCubit.statusCheck();
                  },
                  child:  Text(AppLocalizations.of(context)!.thirdPageNav))
            ],
          ),
        ),
      ),
    );
  }
}
