import 'package:flutter/material.dart';

class LinearGradientBackground extends StatelessWidget {
  final Widget widget;
  const LinearGradientBackground({Key? key, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeMode.system == ThemeMode.light
        ? Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(185, 210, 210, 210),
                  Color.fromARGB(31, 255, 255, 255),
                ],
              ),
            ),
            child: widget,
          )
        : Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(31, 255, 255, 255),
                  Color.fromARGB(185, 210, 210, 210),
                ],
              ),
            ),
            child: widget,
          );
  }
}
