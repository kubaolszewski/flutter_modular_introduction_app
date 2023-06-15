import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_modular_introduction_app/app/common_widgets/custom_appbar.dart';

class FirstSecondPage extends StatefulWidget {
  const FirstSecondPage({super.key});

  @override
  State<FirstSecondPage> createState() => _FirstSecondPageState();
}

class _FirstSecondPageState extends State<FirstSecondPage> {
  DateTime dateValue = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: AppLocalizations.of(context)!.firstSecondPageHeader),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context)!.firstSecondPage,
                style: const TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(height: 20),
              Text(
                AppLocalizations.of(context)!.helloWorld,
                style: const TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(height: 20),
              Text(
                AppLocalizations.of(context)!.nWombats(5),
                style: const TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(height: 20),
              Localizations.override(
                context: context,
                locale: Localizations.localeOf(context),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: CalendarDatePicker(
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2100),
                      onDateChanged: (value) {
                        setState(() {
                          dateValue = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                AppLocalizations.of(context)!.helloWorldOn(dateValue),
                style: const TextStyle(color: Colors.white, fontSize: 24),
              )
            ],
          ),
        ),
      ),
    );
  }
}
