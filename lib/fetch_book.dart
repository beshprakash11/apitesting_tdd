import 'dart:convert';

import 'package:apitesting_tdd/book_model.dart';
import 'package:http/http.dart' as http;

String fetchBooksURL =
    'https://raw.githubusercontent.com/Richa0305/mock-json/main/book.json';
Future<List<BooksListModel>> fetchBooks(http.Client client) async {
  final response = await client.get(Uri.parse(fetchBooksURL));
  if (response.statusCode == 200) {
    return List<BooksListModel>.from(
      json.decode(response.body).map(
            (x) => BooksListModel.fromJson(x),
          ),
    );
  } else {
    throw Exception('Failed to load books data');
  }
}
