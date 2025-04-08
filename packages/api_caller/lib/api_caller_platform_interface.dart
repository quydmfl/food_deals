import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'api_caller_method_channel.dart';

abstract class ApiCallerPlatform extends PlatformInterface {
  /// Constructs a ApiCallerPlatform.
  ApiCallerPlatform() : super(token: _token);

  static final Object _token = Object();

  static ApiCallerPlatform _instance = MethodChannelApiCaller();

  /// The default instance of [ApiCallerPlatform] to use.
  ///
  /// Defaults to [MethodChannelApiCaller].
  static ApiCallerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ApiCallerPlatform] when
  /// they register themselves.
  static set instance(ApiCallerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
