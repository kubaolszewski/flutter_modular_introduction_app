import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_introduction_app/app/home_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title:'Third Page'),
      body: Container(
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
                  onPressed: () => Modular.to.popUntil((route) => false,),
                  child: const Text('Back to first page')),
                  ElevatedButton(
                  onPressed: () => Modular.to.pushNamed('/second'),
                  child: const Text('Back to second page'))
            ],
          ),
        ),
      ),
    );
  }
}