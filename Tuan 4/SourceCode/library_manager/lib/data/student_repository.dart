import 'package:collection/collection.dart';
import 'package:library_manager/model/book.dart';
import 'package:library_manager/model/student.dart';

class StudentRepository {
  final List<Student> _students = [
    Student(
      id: '1',
      name: 'Nguyễn Văn A',
      borrowedBooks: [
        Book(id: '1', title: 'Sách 01'),
        Book(id: '2', title: 'Sách 02'),
      ],
    ),
    Student(
      id: '2',
      name: 'Trần Thị B',
      borrowedBooks: [Book(id: '1', title: 'Sách 01')],
    ),
    Student(id: '3', name: 'Lê Văn C', borrowedBooks: []),
    Student(id: '4', name: 'Phạm Thị D', borrowedBooks: []),
  ];

  List<Student> getStudents() {
    return _students;
  }

  Student? getStudentById(String id) {
    return _students.firstWhereOrNull((student) => student.id == id);
  }
}
