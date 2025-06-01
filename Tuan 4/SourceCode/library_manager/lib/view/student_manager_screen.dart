import 'package:flutter/cupertino.dart';

class StudentManagerScreen extends StatefulWidget {
  const StudentManagerScreen({super.key});

  @override
  State<StudentManagerScreen> createState() => _StudentManagerScreenState();
}

class _StudentManagerScreenState extends State<StudentManagerScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Sinh viên'));
  }
}
