class UserModel {
  final String name;
  int currentLevel;
  int score;

  UserModel({required this.name, this.currentLevel = 0, this.score = 0});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      currentLevel: json['currentLevel'],
      score: json['score'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'currentLevel': currentLevel,
      'score': score,
    };
  }
}
