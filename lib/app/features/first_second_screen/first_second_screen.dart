import 'package:flutter/material.dart';
import 'package:flutter_modular_introduction_app/app/common_widgets/custom_appbar.dart';

class FirstSecondPage extends StatelessWidget {
  const FirstSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'First Second Page'),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'This is the first, blue page',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              Localizations.override(
                context: context,
                locale: const Locale('es'),
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
                      onDateChanged: (value) {},
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
