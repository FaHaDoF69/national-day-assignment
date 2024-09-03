import '../models/user_model.dart';
import 'package:get_storage/get_storage.dart';

class UserData {
  final GetStorage _box = GetStorage('box');

  UserModel getUser() {
    final data = _box.read('user');
    if (data != null) {
      return UserModel.fromJson(data);
    } else {
      return UserModel(name: 'Guest');
    }
  }

  void saveUser(UserModel user) {
    _box.write('user', user.toJson());
  }
}
