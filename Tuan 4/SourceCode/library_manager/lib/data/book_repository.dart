import 'package:collection/collection.dart';
import 'package:library_manager/model/book.dart';

class BookRepository {
  final List<Book> _books = [
    Book(id: '1', title: 'Sách 01'),
    Book(id: '2', title: 'Sách 02'),
    Book(id: '3', title: 'Sách 03'),
    Book(id: '4', title: 'Sách 04'),
  ];

  List<Book> getBooks() {
    return _books;
  }

  Book? getBookById(String id) {
    return _books.firstWhereOrNull((book) => book.id == id);
  }
}
