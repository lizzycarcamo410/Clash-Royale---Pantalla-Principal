import 'package:flutter/material.dart';
import 'package:clashroyale/formulario_login.dart';

void main() {
  runApp(const ClashRoyaleApp());
}

class ClashRoyaleApp extends StatelessWidget {
  const ClashRoyaleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage());
  }
}
