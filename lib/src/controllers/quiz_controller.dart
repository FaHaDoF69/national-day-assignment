
import '../models/question_model.dart';
import '../utils/storage_helper.dart';

class QuizController {
  List<QuestionsModel> _questions = [];
  int _currentQuestionIndex = 0;
  int _score = 0;

  StorageHelper storageHelper = StorageHelper();

  List<QuestionsModel> get questions => _questions;
  int get currentQuestionIndex => _currentQuestionIndex;
  int get score => _score;

  void nextQuestion() {
    if (_currentQuestionIndex < _questions.length - 1) {
      _currentQuestionIndex++;
      storageHelper.saveCurrentLevel(_currentQuestionIndex);
    }
  }

  void resetQuiz() {
    _currentQuestionIndex = 0;
    _score = 0;
    storageHelper.saveCurrentLevel(_currentQuestionIndex);
  }

  void checkAnswer(String selectedAnswer) {
    if (_questions[_currentQuestionIndex].answer == selectedAnswer) {
      _score++;
      storageHelper.saveUserScore(_score);
    }
  }
}
