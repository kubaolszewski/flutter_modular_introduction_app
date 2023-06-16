import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_introduction_app/app_module.dart';
import 'package:flutter_modular_introduction_app/app_widget.dart';
import 'package:flutter_modular_introduction_app/core/translations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: Translations.all,
      fallbackLocale: Translations.all[0],
      path: 'assets/l10n',
      child: ModularApp(
        module: AppModule(),
        child: const MyApp(),
      ),
    ),
  );
}
