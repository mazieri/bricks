//TODO: fix the right place of the module
ModuleRoute(
          "/{{module.snakeCase()}}",
          module: {{module.pascalCase()}}Module(),
          transition: TransitionType.fadeIn,
        ),