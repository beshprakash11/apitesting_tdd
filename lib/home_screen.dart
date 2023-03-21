import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: const Text('API Fetch TDD'),
      ),
      body: Center(
        child: FutureBuilder(builder: (context, snapshot) {
          return const CircularProgressIndicator();
        }),
      ),
    );
  }
}
