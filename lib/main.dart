import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:national_day_assignment/src/screens/home_screen.dart';
import 'package:national_day_assignment/src/utils/dependency_injection.dart';

Future<void> main() async {
  await GetStorage.init('box');
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore Saudi Arabia Quiz',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(),
    );
  }
}
