import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_book_plugin/flutter_book_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_book_plugin');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterBookPlugin.platformVersion, '42');
  });
}
