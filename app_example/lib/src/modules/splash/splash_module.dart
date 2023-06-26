import 'package:flutter_modular/flutter_modular.dart';

import 'view/splash_page.dart';

class SplashModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          "/",
          child: (_, args) => const SplashPage(),
          transition: TransitionType.noTransition,
        ),
      ];
}
