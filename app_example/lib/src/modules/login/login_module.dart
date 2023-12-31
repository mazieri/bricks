import 'package:flutter_modular/flutter_modular.dart';

import 'view/login_page.dart';
// import 'submodules/login_submodules_exports.dart';

class LoginModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          "/",
          child: (_, args) => const LoginPage(),
        ),
      ];
}
