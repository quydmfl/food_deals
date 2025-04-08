import 'package:flutter_test/flutter_test.dart';
import 'package:api_caller/api_caller.dart';
import 'package:api_caller/api_caller_platform_interface.dart';
import 'package:api_caller/api_caller_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockApiCallerPlatform
    with MockPlatformInterfaceMixin
    implements ApiCallerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ApiCallerPlatform initialPlatform = ApiCallerPlatform.instance;

  test('$MethodChannelApiCaller is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelApiCaller>());
  });

  test('getPlatformVersion', () async {
    ApiCaller apiCallerPlugin = ApiCaller();
    MockApiCallerPlatform fakePlatform = MockApiCallerPlatform();
    ApiCallerPlatform.instance = fakePlatform;

    expect(await apiCallerPlugin.getPlatformVersion(), '42');
  });
}
