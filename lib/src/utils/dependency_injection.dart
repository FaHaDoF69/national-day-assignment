import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import '../data_layer/user_data.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  // Register GetStorage
  locator.registerSingleton<GetStorage>(GetStorage('box'));

  // Register UserData
  locator.registerSingleton<UserData>(UserData());
}
