import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_introduction_app/app/common_widgets/custom_appbar.dart';
import 'package:flutter_modular_introduction_app/app/features/first_page/cubit/first_page_cubit.dart';
import 'package:flutter_modular_introduction_app/app/features/first_page/first_page_module.dart';
import 'package:flutter_modular_introduction_app/app/features/second_page/second_page_module.dart';
import 'package:flutter_modular_introduction_app/app/features/third_page/third_page_module.dart';
import 'package:flutter_modular_introduction_app/l10n/locale_keys.g.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    FirstPageCubit firstPageCubit = Modular.get<FirstPageCubit>();
    return Scaffold(
      appBar: CustomAppBar(title: LocaleKeys.firstHeader.tr()),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                LocaleKeys.firstPageText.tr(),
                style: const TextStyle(color: Colors.white, fontSize: 24),
              ),
              ElevatedButton(
                  onPressed: () {
                    Modular.to.pushReplacementNamed(SecondPagePath.secondPath);
                    firstPageCubit.statusCheck();
                  },
                  child: Text(LocaleKeys.secondPaveNav.tr())),
              ElevatedButton(
                  onPressed: () {
                    Modular.to.pushNamed(FirstPagePath.secondScreenPath);
                    firstPageCubit.statusCheck();
                  },
                  child: Text(LocaleKeys.firstSecondPageNav.tr())),
              ElevatedButton(
                  onPressed: () {
                    Modular.to.pushReplacementNamed(ThirdPagePath.thirdPath);
                    firstPageCubit.statusCheck();
                  },
                  child: Text(LocaleKeys.thirdPageNav.tr()))
            ],
          ),
        ),
      ),
    );
  }
}
