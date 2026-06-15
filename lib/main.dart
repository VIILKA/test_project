import 'package:flutter/material.dart';
import 'core/di/injection.dart';
import 'presentation/pages/payment_page.dart';

void main() {
  di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mbank Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF3B40D6)),
        useMaterial3: true,
      ),
      home: const PaymentPage(orderId: '12345'),
    );
  }
}
