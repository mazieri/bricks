import '../services_exports.dart';

//TODO: add key "dsn" to firebase remote config

final String dsn =
    RemoteConfig().getValueOrDefault(key: "dsn", defaultValue: "");
