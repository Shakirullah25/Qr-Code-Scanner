import 'package:flutter/material.dart';
import 'package:frontendmentor_qr_code/qr_code_scanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR CODE SCANNER',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const QrCodeScanner(),
    );
  }
}
