import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular_introduction_app/app/common_widgets/custom_appbar.dart';
import 'package:flutter_modular_introduction_app/l10n/locale_keys.g.dart';

class FirstSecondPage extends StatelessWidget {
  const FirstSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppBar(title: LocaleKeys.firstSecondHeader.tr()),
      body: Container(
        color: Colors.blue,
        child:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                LocaleKeys.firstSecondPageText.tr(),
                style: const TextStyle(color: Colors.white, fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}