import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_introduction_app/app/common_widgets/custom_appbar.dart';
import 'package:flutter_modular_introduction_app/app/features/first_page/first_page_module.dart';
import 'package:flutter_modular_introduction_app/app/features/second_page/cubit/second_page_cubit.dart';
import 'package:flutter_modular_introduction_app/app/features/third_page/third_page_module.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    SecondPageCubit secondPageCubit = Modular.get<SecondPageCubit>();
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
                    onPressed: ()  {Modular.to.pushNamed(ThirdPagePath.thirdPath);
                    secondPageCubit.statusCheck();},
                    child: const Text('Navigate to third page')),
                    ElevatedButton(
                    onPressed: ()  {Modular.to.pushNamed(FirstPagePath.firstPath);
                    secondPageCubit.statusCheck();},
                    child: const Text('Navigate to first page'))
              ],
            ),
          ),
        ),
    );
  }
}
