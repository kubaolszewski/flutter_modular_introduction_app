import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_modular_introduction_app/app/common_widgets/custom_appbar.dart';
import 'package:flutter_modular_introduction_app/app/features/second_page/cubit/second_page_cubit.dart';
import 'package:flutter_modular_introduction_app/app/features/third_page/third_page_module.dart';
import 'package:flutter_modular_introduction_app/app_module.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    SecondPageCubit secondPageCubit = Modular.get<SecondPageCubit>();
    return Scaffold(appBar:  CustomAppBar(title:AppLocalizations.of(context)!.firstPageHeader),
      body: Container(
          color: Colors.green,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Text(
                  AppLocalizations.of(context)!.secondPage,
                  style: const TextStyle(color: Colors.white, fontSize: 24),
                ),
                ElevatedButton(
                    onPressed: ()  {Modular.to.pushNamed(ThirdPagePath.thirdPath);
                    secondPageCubit.statusCheck();
                    },
                    child:  Text(AppLocalizations.of(context)!.thirdPageNav)),
                    ElevatedButton(
                    onPressed: ()  {Modular.to.pushReplacementNamed(AppModulesPath.firstPageModulesPath);
                    secondPageCubit.statusCheck();},
                    child:  Text(AppLocalizations.of(context)!.firstPageNav))
              ],
            ),
          ),
        ),
    );
  }
}
