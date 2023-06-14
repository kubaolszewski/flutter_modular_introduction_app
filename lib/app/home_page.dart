import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_introduction_app/app/features/first_page/first_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FirstPage();
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double appBarHeight = 60;
  final String title;
  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        title,
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: ()
              // Navigator.of(context).pop();
              =>
              Modular.to.pop()),
    );
  }
}
