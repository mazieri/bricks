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
      //TODO: remove this widget if you don't want "linear gradient background"
      widget: Center(
        child: Lottie.asset(
          "", //TODO: add lottie assets, don't forget to declare in pubspec (or add to remoteConfig)
          fit: BoxFit.fitHeight,
          repeat: false,
          // frameRate: FrameRate(15), //TODO: if you need to lock the frames, just uncomment and replace
        ),
      ),
    );
  }
}
