import 'package:flutter/material.dart';
import 'package:flutter_modular_introduction_app/app/features/second_page/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const SecondPage()));
                  },
                  child: const Text('Navigate to second page'))
            ],
          ),
        ),
      ),
    );
  }
}
