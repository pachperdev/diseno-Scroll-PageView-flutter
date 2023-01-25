import 'package:diseno_scroll_flutter/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseño_scroll',
      initialRoute: 'page1',
      routes: {
        'page1': (context) => const HomeScreen(),
      },
    );
  }
}
