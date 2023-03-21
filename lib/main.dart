import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: null,
          title: const Text('API Fetch TDD'),
        ),
        body: Center(
          child: FutureBuilder(builder: (context, snapshot) {
            return const CircularProgressIndicator();
          }),
        ),
      ),
    );
  }
}
