import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';

import '../../../src_exports.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      Modular.to.navigate("/home/");
    });
  }

  @override
  Widget build(BuildContext context) {
    return LinearGradientBackground(
      widget: Center(
        child: Lottie.asset(
          "", //TODO: add lottie assets
          fit: BoxFit.fitHeight,
          repeat: false,
          // frameRate: FrameRate(15), //TODO: if you need to lock the frames, just uncomment and replace
        ),
      ),
    );
  }
}
