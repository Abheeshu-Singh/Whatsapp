import 'package:flutter/material.dart';
import 'package:whatsapp/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      theme: ThemeData(
        primaryColor: const Color(0xff075E54),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xff25D366),
        ),
      ),
      home: HomePage(),
    );
  }
}
