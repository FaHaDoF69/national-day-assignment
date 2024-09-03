import 'package:flutter/material.dart';
import 'package:national_day_assignment/src/screens/questions_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('National Day Quiz')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => QuizScreen()));
          },
          child: Text('Start Quiz'),
        ),
      ),
    );
  }
}
