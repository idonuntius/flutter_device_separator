import 'package:flutter/material.dart';
import 'package:flutter_device_separator/src/device_type.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html show window;

class DeviceSeparatorWidget extends StatelessWidget {
  const DeviceSeparatorWidget({
    super.key,
    this.pc,
    this.tablet,
    this.mobile,
    required this.orElse,
  });

  final Widget? pc;
  final Widget? tablet;
  final Widget? mobile;
  final Widget orElse;

  @override
  Widget build(BuildContext context) {
    switch (DeviceType.from(html.window.navigator.userAgent)) {
      case DeviceType.pc:
        return pc ?? orElse;
      case DeviceType.tablet:
        return tablet ?? orElse;
      case DeviceType.mobile:
        return mobile ?? orElse;
    }
  }
}
