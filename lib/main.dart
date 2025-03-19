import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(), // Sửa từ `builder` thành `create`
      child: MaterialApp(
        debugShowCheckedModeBanner: false, // Ẩn debug banner
        home: TasksScreen(),
      ),
    );
  }
}
