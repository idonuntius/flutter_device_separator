enum DeviceType {
  pc,
  tablet,
  mobile;

  static DeviceType from(String value) {
    if (value.contains('iPhone')) {
      return DeviceType.mobile;
    } else if (value.contains('iPad')) {
      return DeviceType.tablet;
    } else if (value.contains('Android') && value.contains('mobile')) {
      return DeviceType.mobile;
    } else if (value.contains('Android')) {
      return DeviceType.tablet;
    } else if (value.contains('Firefox') && value.contains('Mobile')) {
      return DeviceType.mobile;
    } else if (value.contains('Firefox') && value.contains('Tablet')) {
      return DeviceType.tablet;
    } else {
      return DeviceType.pc;
    }
  }
}
