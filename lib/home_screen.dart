import 'package:apitesting_tdd/book_model.dart';
import 'package:apitesting_tdd/fetch_book.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final Future<List<BooksListModel>> books;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    books = fetchBooks(http.Client());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: const Text('API Fetch TDD'),
      ),
      body: Center(
        child: FutureBuilder<List<BooksListModel>>(builder: (context, snapshot) {
          
          return const CircularProgressIndicator();
        }),
      ),
    );
  }
}
