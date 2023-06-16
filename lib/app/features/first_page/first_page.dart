import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_introduction_app/app/common_widgets/custom_appbar.dart';
import 'package:flutter_modular_introduction_app/app/features/first_page/cubit/first_page_cubit.dart';
import 'package:flutter_modular_introduction_app/app/features/first_page/first_page_module.dart';
import 'package:flutter_modular_introduction_app/app/features/second_page/second_page_module.dart';
import 'package:flutter_modular_introduction_app/app/features/third_page/third_page_module.dart';
import 'package:flutter_modular_introduction_app/core/applocalization_context.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    FirstPageCubit firstPageCubit = Modular.get<FirstPageCubit>();
    return Scaffold(
      appBar:  CustomAppBar(title: context.localizations.firstPageHeader),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                context.localizations.firstPage,
                style: const TextStyle(color: Colors.white, fontSize: 24),
              ),
              ElevatedButton(
                  onPressed: () {
                    Modular.to.pushReplacementNamed(SecondPagePath.secondPath);
                    firstPageCubit.statusCheck();
                  },
                  child:  Text(context.localizations.secondPageNav)),
              ElevatedButton(
                  onPressed: () {
                    Modular.to.pushNamed(FirstPagePath.secondScreenPath);
                    firstPageCubit.statusCheck();
                  },
                  child:  Text(context.localizations.firstSecondPageNav)),
              ElevatedButton(
                  onPressed: () {
                    Modular.to.pushReplacementNamed(ThirdPagePath.thirdPath);
                    firstPageCubit.statusCheck();
                  },
                  child:  Text(context.localizations.thirdPageNav))
            ],
          ),
        ),
      ),
    );
  }
}
