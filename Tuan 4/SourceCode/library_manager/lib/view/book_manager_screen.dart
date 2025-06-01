import 'package:flutter/cupertino.dart';

class BookManagerScreen extends StatefulWidget {
  const BookManagerScreen({super.key});

  @override
  State<BookManagerScreen> createState() => _BookManagerScreenState();
}

class _BookManagerScreenState extends State<BookManagerScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Danh sách Sách'));
  }
}
