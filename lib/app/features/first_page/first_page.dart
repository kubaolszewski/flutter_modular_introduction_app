import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_introduction_app/app/home_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: const CustomAppBar(title:'First Page'),
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
                ElevatedButton(
                    onPressed: () => Modular.to.pushNamed('/second'),
                    child: const Text('Navigate to second page')),
                    ElevatedButton(
                    onPressed: () => Modular.to.pushNamed('/third'),
                    child: const Text('Navigate to third page'))
              ],
            ),
          ),
        ),
    );
  }
}
