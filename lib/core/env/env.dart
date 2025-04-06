enum EnvType { dev, staging, prod }

class Env {
  final EnvType envType;
  final String defaultDateTimeFormat;
  // Define properties for each environment

  // Private constructor
  Env._internal({
    required this.envType,
    this.defaultDateTimeFormat = 'yyyy-MM-dd',
  });

  factory Env.dev() {
    return Env._internal(envType: EnvType.dev, defaultDateTimeFormat: 'yyyy-MM-dd');
  }

  factory Env.staging() {
    return Env._internal(envType: EnvType.staging, defaultDateTimeFormat: 'yyyy-MM-dd');
  }

  factory Env.prod() {
    return Env._internal(envType: EnvType.prod, defaultDateTimeFormat: 'yyyy-MM-dd');
  }
}