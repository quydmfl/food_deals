import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'api_caller_platform_interface.dart';

/// An implementation of [ApiCallerPlatform] that uses method channels.
class MethodChannelApiCaller extends ApiCallerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('api_caller');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
