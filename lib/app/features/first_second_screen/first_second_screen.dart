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
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'This is the first, blue page',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}