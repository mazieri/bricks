import 'package:flutter_modular/flutter_modular.dart';

import 'view/{{module.snakeCase()}}_page.dart';
// import 'submodules/{{module.snakeCase()}}_submodules_exports.dart';

class {{module.pascalCase()}}Module extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          "/",
          child: (_, args) => const {{module.pascalCase()}}Page(),
        ),
      ];
}
