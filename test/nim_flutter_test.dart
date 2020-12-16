import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nim_flutter/nim_flutter.dart';

void main() {
  const MethodChannel channel = MethodChannel('nim_flutter');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterNIM().platformVersion, '42');
  });
}
