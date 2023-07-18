import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'src/src_exports.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  kIsWeb ==
          true //TODO: remove this part of code, if you are not going to use Web App
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: apiKey,
            appId: appId,
            messagingSenderId: messagingSenderId,
            projectId: projectId,
          ),
        )
      : await Firebase.initializeApp();

  await RemoteConfig().start();

  await SentryFlutter.init(
    (options) {
      options
        ..dsn = dsn
        ..release =
            '{{nameApp.snakeCase()}}@0.0.1+1' //TODO: remember to change versions
        ..environment =
            'dev' //TODO: if necessary, change the environment to "prod"
        ..tracesSampleRate = tracesSampleRate
        ..enableAutoPerformanceTracing = true
        ..autoAppStart = true
        ..enableAutoSessionTracking = true;
    },
    appRunner: () => runApp(
      DefaultAssetBundle(
        bundle: SentryAssetBundle(enableStructuredDataTracing: true),
        child: ModularApp(
          module: AppModule(),
          child: const AppChild(),
        ),
      ),
    ),
  );
}
