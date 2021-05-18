import 'package:flutter/material.dart';
import 'package:flutter_app_to_do_list/model/Task_Data.dart';
import 'package:provider/provider.dart';
import 'Screen/TaskScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => Task_Data(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
