import 'dart:async';

import 'package:flutter/services.dart';

class FlutterBookPlugin {
  //定义 通道 方法 MethodChannel 通道 标识 这个 和 原生 代码 是 对应 的 要 保持一致
  static const MethodChannel _channel =
      const MethodChannel('flutter_book_plugin');

  //提供 外部 调用 的 方法 注意 此 方法 要 加 异步 处理
  static Future<String> get platformVersion async {
    //调用 原生 程序 获取 系统 版本
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
