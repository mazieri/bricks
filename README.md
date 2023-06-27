# Bricks

- Why/how to use ?
  - [step-to-step in my blog (pt-br)](https://blog.efemazieri.dev/automacao-com-mason-brick)
  - [official doc](https://docs.brickhub.dev)
  - [official website](brickhub.dev)

## Install/Use

- `mason add struct_cplt` | [struct_cplt](https://brickhub.dev/bricks/struct_cplt/1.0.0)
- `mason add mod` | [mod](https://brickhub.dev/bricks/mod/1.0.0)

## YouTube

- [struct_cplt](https://youtu.be/NQQTHMPYlzw)
- [mod](https://youtu.be/WhHJ7IBOnGM)

## Explain

- App Example
- Brick + Hook | Complete Structure
  - brick
    - base structure
      - error
      - home
      - splash (animated)
      - +1 module
    - [modular (flutterando package)](https://modular.flutterando.com.br/docs/intro/)
    - firebase
    - sentry
    - theme light/dark(with random color in background)
    - native splash.yaml
    - icons launcher.yaml
    - rename app.yaml
  - hook
    - Post_gen
      - add packages
        - dependencies
          - [flutter_modular](https://pub.dev/packages/flutter_modular)
          - [uno](https://pub.dev/packages/uno)
          - [sentry_flutter](https://pub.dev/packages/sentry_flutter)
          - [firebase_core](https://pub.dev/packages/firebase_core)
          - [firebase_analytics](https://pub.dev/packages/firebase_analytics)
          - [firebase_remote_config](https://pub.dev/packages/firebase_remote_config)
          - [mobx](https://pub.dev/packages/mobx)
          - [flutter_mobx](https://pub.dev/packages/flutter_mobx)
          - [url_launcher](https://pub.dev/packages/url_launcher)
          - [lottie](https://pub.dev/packages/lottie)
          - [flutter_svg](https://pub.dev/packages/flutter_svg)
          - [google_fonts](https://pub.dev/packages/google_fonts)
          - [shared_preferences](https://pub.dev/packages/shared_preferences)
          - [applovin_max](https://pub.dev/packages/applovin_max)
        - dev dependencies
          - [modular_test](https://pub.dev/packages/modular_test)
          - [mobx_codegen](https://pub.dev/packages/mobx_codegen)
          - [build_runner](https://pub.dev/packages/build_runner)
          - [flutter_native_splash](https://pub.dev/packages/flutter_native_splash)
          - [icons_launcher](https://pub.dev/packages/icons_launcher)
          - [package_rename](https://pub.dev/packages/package_rename)
      - pub get
- Brick | Module
  - just add +1 module

## Remember

- this is the architecture I'm like and feels comfortable, but if you don't liked, just modify
- The idea of this code is to replace the entire lib/
- if/when you are going to use native_splash, icons_launcher and rename, don't forget to go to the .yaml files and uncomment the part you are going to use
- When you use the "mod" brick, please, use this command `mason make mod --on-conflict append`, this command will see that it has conflicts (the rest of the code) and will add "lastly" in 2 files: `app_module.dart` and `modules_exports.dart`
- Remember to fix the position of the module in the file `app_module.dart`
