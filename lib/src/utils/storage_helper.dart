import 'package:get_storage/get_storage.dart';

class StorageHelper {
  final GetStorage _storage = GetStorage('box');

  int getCurrentLevel() {
    return _storage.read('currentLevel') ?? 0;
  }

  void saveCurrentLevel(int level) {
    _storage.write('currentLevel', level);
  }

  int getUserScore() {
    return _storage.read('userScore') ?? 0;
  }

  void saveUserScore(int score) {
    _storage.write('userScore', score);
  }
}
