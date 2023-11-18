import 'package:flutter_device_separator/src/device_type.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('from', () {
    test('input value is iPhone', () {
      expect(DeviceType.from('iPhone'), DeviceType.mobile);
    });

    test('input value is iPhone', () {
      expect(DeviceType.from('iPad'), DeviceType.tablet);
    });

    test('input value is Android mobile', () {
      expect(DeviceType.from('Android mobile'), DeviceType.mobile);
    });

    test('input value is Android', () {
      expect(DeviceType.from('Android'), DeviceType.tablet);
    });

    test('input value is Firefox Mobile', () {
      expect(DeviceType.from('Firefox Mobile'), DeviceType.mobile);
    });

    test('input value is Firefox Tablet', () {
      expect(DeviceType.from('Firefox Tablet'), DeviceType.tablet);
    });

    test('input value is android', () {
      expect(DeviceType.from('android'), DeviceType.pc);
    });
  });
}
