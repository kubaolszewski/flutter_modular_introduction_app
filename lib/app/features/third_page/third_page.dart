import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_introduction_app/app/common_widgets/custom_appbar.dart';
import 'package:flutter_modular_introduction_app/app/features/first_page/first_page_module.dart';
import 'package:flutter_modular_introduction_app/app/features/second_page/second_page_module.dart';
import 'package:flutter_modular_introduction_app/app/features/third_page/cubit/third_page_cubit.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    ThirdPageCubit thirdPageCubit = Modular.get<ThirdPageCubit>();
    return Scaffold(
      appBar: const CustomAppBar(title: 'Third Page'),
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
                  onPressed: () {
                    Modular.to.pushReplacementNamed(FirstPagePath.firstPath);
                    thirdPageCubit.statusCheck();
                  },
                  child: const Text('Back to first page')),
              ElevatedButton(
                  onPressed: () {
                    Modular.to.pushReplacementNamed(SecondPagePath.secondPath);
                    thirdPageCubit.statusCheck();
                  },
                  child: const Text('Back to second page'))
            ],
          ),
        ),
      ),
    );
  }
}
