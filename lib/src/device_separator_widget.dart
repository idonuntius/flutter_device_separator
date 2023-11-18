import 'package:flutter/material.dart';
import 'package:flutter_device_separator/src/device_type.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html show window;

/// Widget that provides the ability to change widgets for each device.
class DeviceSeparatorWidget extends StatelessWidget {
  const DeviceSeparatorWidget({
    super.key,
    this.pc,
    this.tablet,
    this.mobile,
    required this.orElse,
  });

  /// Specify widget for PC.
  final Widget? pc;

  /// Specify widget for Tablet.
  final Widget? tablet;

  /// Specify widget for Mobile.
  final Widget? mobile;

  /// Specify widget for orElse.
  /// If mobile is null and the user is using mobile, display this widget.
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
