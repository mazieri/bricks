import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('Installing packages');

  // add dependencies
  await Process.run("flutter", ["pub", "add", "flutter_modular"]);
  await Process.run("flutter", ["pub", "add", "uno"]);
  await Process.run("flutter", ["pub", "add", "sentry_flutter"]);
  await Process.run("flutter", ["pub", "add", "firebase_core"]);
  await Process.run("flutter", ["pub", "add", "firebase_analytics"]);
  await Process.run("flutter", ["pub", "add", "firebase_remote_config"]);
  await Process.run("flutter", ["pub", "add", "mobx"]);
  await Process.run("flutter", ["pub", "add", "flutter_mobx"]);
  await Process.run("flutter", ["pub", "add", "url_launcher"]);
  await Process.run("flutter", ["pub", "add", "lottie"]);
  await Process.run("flutter", ["pub", "add", "flutter_svg"]);
  await Process.run("flutter", ["pub", "add", "google_fonts"]);
  await Process.run("flutter", ["pub", "add", "shared_preferences"]);
  await Process.run("flutter", ["pub", "add", "applovin_max"]);

  // add dev dependencies
  await Process.run("flutter", ["pub", "add", "-d", "modular_test"]);
  await Process.run("flutter", ["pub", "add", "-d", "mobx_codegen"]);
  await Process.run("flutter", ["pub", "add", "-d", "build_runner"]);
  await Process.run("flutter", ["pub", "add", "-d", "flutter_native_splash"]);
  await Process.run("flutter", ["pub", "add", "-d", "icons_launcher"]);
  await Process.run("flutter", ["pub", "add", "-d", "package_rename"]);

  // att pubspec.yaml
  await Process.run("flutter", ["pub", "get"]);

  progress.complete();
}
