import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RemoteConfig {
  late FirebaseRemoteConfig _firebaseRemoteConfig;

  RemoteConfig._internal();
  static final RemoteConfig _singleton = RemoteConfig._internal();
  factory RemoteConfig() => _singleton;

  Future<void> start() async {
    _firebaseRemoteConfig = FirebaseRemoteConfig.instance;

    await _firebaseRemoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 30),
        minimumFetchInterval: const Duration(minutes: 1),
        // minimumFetchInterval: const Duration(days: 1), //TODO: after launching, increase remote config cache time
      ),
    );
    await _firebaseRemoteConfig.fetchAndActivate();
  }

  Future<void> forceFetch() async {
    try {
      _firebaseRemoteConfig = FirebaseRemoteConfig.instance;

      await _firebaseRemoteConfig.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(seconds: 30),
          minimumFetchInterval: Duration.zero,
        ),
      );
      await _firebaseRemoteConfig.fetchAndActivate();
    } on PlatformException catch (exception) {
      Modular.to.navigate("/error");
      throw exception.toString();
    } catch (error) {
      Modular.to.navigate("/error");
      throw ("Erro ao buscar Configuração Remota");
    }
  }

  getValueOrDefault({
    required String key,
    required dynamic defaultValue,
  }) {
    switch (defaultValue.runtimeType) {
      case String:
        var firebaseValue = _firebaseRemoteConfig.getString(key);
        return firebaseValue != "" ? firebaseValue : defaultValue;
      case int:
        var firebaseValue = _firebaseRemoteConfig.getInt(key);
        return firebaseValue != 0 ? firebaseValue : defaultValue;
      case bool:
        var firebaseValue = _firebaseRemoteConfig.getBool(key);
        return firebaseValue != false ? firebaseValue : defaultValue;
      case double:
        var firebaseValue = _firebaseRemoteConfig.getDouble(key);
        return firebaseValue != 0.0 ? firebaseValue : defaultValue;
    }
  }
}
