
import 'api_caller_platform_interface.dart';

class ApiCaller {
  Future<String?> getPlatformVersion() {
    return ApiCallerPlatform.instance.getPlatformVersion();
  }
}
