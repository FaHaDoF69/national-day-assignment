import '../models/user_model.dart';
import '../data_layer/user_data.dart';
import '../utils/dependency_injection.dart';

class UserController {
  final UserData _userData = locator<UserData>();

  UserModel get currentUser => _userData.getUser();

  void saveUser(UserModel user) {
    _userData.saveUser(user);
  }

  void updateUserLevel(int level) {
    currentUser.currentLevel = level;
    _userData.saveUser(currentUser);
  }

  void updateUserScore(int score) {
    currentUser.score = score;
    _userData.saveUser(currentUser);
  }
}
