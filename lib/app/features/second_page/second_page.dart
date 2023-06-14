import 'package:flutter/material.dart';
import 'package:flutter_modular_introduction_app/app/features/third_page/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const ThirdPage()));
                },
                child: const Text('Navigate to third page'))
          ],
        ),
      ),
    );
  }
}
