import 'package:foody/app/user/data/api/model/user.dart';
import 'package:foody/app/user/userPreferences/user_prferences.dart';
import 'package:get/get.dart';

class CurrentUser extends GetxController
{
  Rx<User> _currentUser = User(0, '', '', '').obs;

  User get user => _currentUser.value;

  getUserInfo()async
  {
    User? getUserInfoFromLocalStorage = await RememberUserPrefs.readUseInfo();
    _currentUser.value = getUserInfoFromLocalStorage!;
  }
}