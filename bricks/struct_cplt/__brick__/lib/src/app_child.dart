import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'src_exports.dart';

class AppChild extends StatelessWidget {
  const AppChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: if you need to lock the app's orientation, just uncomment here and above
    // SystemChrome.setPreferredOrientations(
    //   [
    //     DeviceOrientation.portraitUp,
    //   ],
    // );
    return MaterialApp.router(
      title: "{{nameApp.titleCase()}}",
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: lightTheme(),
      darkTheme: darkTheme(),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
