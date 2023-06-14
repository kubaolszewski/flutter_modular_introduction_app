import 'package:flutter/material.dart';
import 'package:flutter_modular_introduction_app/app/features/first_page/first_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'This is the third, orange page',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const FirstPage()));
                },
                child: const Text('Back to first page'))
          ],
        ),
      ),
    );
  }
}