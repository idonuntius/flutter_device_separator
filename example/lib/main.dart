import 'package:flutter/material.dart';
import 'package:flutter_device_separator/flutter_device_separator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_device_separator Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter_device_separator DEMO'),
      ),
      body: DeviceSeparatorWidget(
        pc: _buildItem('pc', Colors.red.shade100),
        tablet: _buildItem('tablet', Colors.blue.shade100),
        mobile: _buildItem('mobile', Colors.purple.shade100),
        orElse: _buildItem('orElse', Colors.white),
      ),
    );
  }

  Widget _buildItem(String text, Color backgroundColor) {
    return ColoredBox(
      color: backgroundColor,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
