## Motivation

**Current support is web only. In the future, it plans to support a variety of platforms.**   
This package allows you to change widgets for each device (PC, tablet, mobile).

## Getting started

Add dependency.

```dart
dependencies:
  flutter_device_separator: ^1.0.0
```

## Usage

```dart
import 'package:flutter_device_separator/flutter_device_separator.dart';

DeviceSeparatorWidget(
  // Specify widget for PC.
  pc: buildPCWidget(),
  // Specify widget for Tablet.
  tablet: buildTabletWidget(),
  // Specify widget for Mobile.
  mobile: buildMobileWidget(),
  // Specify widget for orElse. If mobile is null and the user is using mobile, display this widget.
  orElse: buildOrElseWidget(),
)
```

## Additional information

Device is determined by UserAgent.
