import 'package:flutter_modular/flutter_modular.dart';

import 'view/home_page.dart';
// import 'submodules/home_submodules_exports.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          "/",
          child: (_, args) => const HomePage(),
        ),
      ];
}
