import 'package:flutter/material.dart';
import '../controllers/quiz_controller.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final QuizController _quizController = QuizController();

  @override
  Widget build(BuildContext context) {
    final currentQuestion = _quizController.questions[_quizController.currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(title: Text('Quiz')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestion.question ?? ''),
          ElevatedButton(
            onPressed: () {
              _quizController.checkAnswer('A');
              setState(() {
                _quizController.nextQuestion();
              });
            },
            child: Text(currentQuestion.a ?? ''),
          ),
          ElevatedButton(
            onPressed: () {
              _quizController.checkAnswer('B');
              setState(() {
                _quizController.nextQuestion();
              });
            },
            child: Text(currentQuestion.b ?? ''),
          ),
          ElevatedButton(
            onPressed: () {
              _quizController.checkAnswer('C');
              setState(() {
                _quizController.nextQuestion();
              });
            },
            child: Text(currentQuestion.c ?? ''),
          ),
          ElevatedButton(
            onPressed: () {
              _quizController.checkAnswer('D');
              setState(() {
                _quizController.nextQuestion();
              });
            },
            child: Text(currentQuestion.d ?? ''),
          ),
        ],
      ),
    );
  }
}
