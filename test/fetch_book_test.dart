import 'package:apitesting_tdd/book_model.dart';
import 'package:apitesting_tdd/fetch_book.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'fetch_book_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  //Fetch Books api call test
  group('Fetch Books api call test', () {
    //Should return list of books for http success call
    test('Should return list of books for http success call', () async {
      //ARRANGE
      final mockClint = MockClient();

      when(mockClint.get(Uri.parse(fetchBooksURL))).thenAnswer(
        (realInvocation) async => http.Response(
            '[{"name": "The 5 Second Rule","auther": "Mel Robbins"}]', 200),
      );

      //ACT & ASSERT
      expect(await fetchBooks(mockClint), isA<List<BooksListModel>>());
    });

    //Should throw an exception when http api call finished with and error
    test('Should throw an exception when http api call finished with and error', (){
      //ARRANGE
      final mockClint = MockClient();
      when(mockClint.get(Uri.parse(fetchBooksURL))).thenAnswer(
        (realInvocation) async => http.Response(
            'Not found', 404),
      );

    });
  });
}
