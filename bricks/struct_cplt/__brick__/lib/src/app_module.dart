import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'src_exports.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => FirebaseAnalytics.instance),
        Bind.singleton((i) => RemoteConfig()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          "/",
          module: SplashModule(),
          transition: TransitionType.noTransition,
        ),
        ModuleRoute(
          "/home",
          module: HomeModule(),
          transition: TransitionType.fadeIn,
        ),
        ModuleRoute(
          "/{{module.snakeCase()}}",
          module: {{module.pascalCase()}}Module(),
          transition: TransitionType.fadeIn,
        ),
        WildcardRoute(
          child: (_, args) => const ErrorPage(),
          transition: TransitionType.noTransition,
        ),
      ];
}
