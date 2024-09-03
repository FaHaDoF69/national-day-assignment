// models/question_model.dart
class QuestionsModel {
  String? question;
  String? a;
  String? b;
  String? c;
  String? d;
  String? answer;

  QuestionsModel({this.question, this.a, this.b, this.c, this.d, this.answer});

  QuestionsModel.fromJson(Map<String, dynamic> json) {
    question = json['question'];
    a = json['A'];
    b = json['B'];
    c = json['C'];
    d = json['D'];
    answer = json['answer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['question'] = question;
    data['A'] = a;
    data['B'] = b;
    data['C'] = c;
    data['D'] = d;
    data['answer'] = answer;
    return data;
  }
}
