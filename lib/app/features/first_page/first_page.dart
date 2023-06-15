import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_introduction_app/app/common_widgets/custom_appbar.dart';
import 'package:flutter_modular_introduction_app/app/features/first_page/cubit/first_page_cubit.dart';
import 'package:flutter_modular_introduction_app/app/features/first_page/first_page_module.dart';
import 'package:flutter_modular_introduction_app/app/features/second_page/second_page_module.dart';
import 'package:flutter_modular_introduction_app/app/features/third_page/third_page_module.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    FirstPageCubit firstPageCubit = Modular.get<FirstPageCubit>();
    return Scaffold(
      appBar: const CustomAppBar(title: 'First Page'),
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
                    Modular.to.pushReplacementNamed(SecondPagePath.secondPath);
                    firstPageCubit.statusCheck();
                  },
                  child: const Text('Navigate to second page')),
                  ElevatedButton(
                  onPressed: () {
                    Modular.to.pushNamed(FirstPagePath.secondScreenPath);
                    firstPageCubit.statusCheck();
                  },
                  child: const Text('Navigate to second page on first module')),
                  
              ElevatedButton(
                  onPressed: () {
                    Modular.to.pushReplacementNamed(ThirdPagePath.thirdPath);
                    firstPageCubit.statusCheck();
                  },
                  child: const Text('Navigate to third page'))
            ],
          ),
        ),
      ),
    );
  }
}
