import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_introduction_app/app/home_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: const CustomAppBar(title:'Second Page'),
      body: Container(
          color: Colors.green,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'This is the second, green page',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                ElevatedButton(
                    onPressed: () => Modular.to.pushNamed('/third'),
                    child: const Text('Navigate to third page')),
                    ElevatedButton(
                    onPressed: () => Modular.to.pushNamed('/first'),
                    child: const Text('Navigate to first page'))
              ],
            ),
          ),
        ),
    );
  }
}
