import '../services_exports.dart';

//TODO: add key "tracesSampleRate" to firebase remote config

final double tracesSampleRate = RemoteConfig()
    .getValueOrDefault(key: "tracesSampleRate", defaultValue: 0.1);
