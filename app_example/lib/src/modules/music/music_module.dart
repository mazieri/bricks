import 'package:flutter_modular/flutter_modular.dart';

import 'view/music_page.dart';
// import 'submodules/music_submodules_exports.dart';

class MusicModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          "/",
          child: (_, args) => const MusicPage(),
        ),
      ];
}
