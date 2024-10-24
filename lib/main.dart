import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 14, 11, 207)),
          useMaterial3: true,
        ),
        home: const HomePageButton());
  }
}

class HomePageButton extends StatelessWidget {
  const HomePageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Golden Tests Button Colors Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 20,
            ),
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {},
          child: const Text(
            'Flutter Goldens',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
