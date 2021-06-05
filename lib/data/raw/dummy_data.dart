import 'package:profile_web/data/models/user.dart';
import 'package:profile_web/utils/app_assets.dart';

class DummyData {
  getDataUser() => User(
      'M. Hafizh Anbiya',
      'Hvyz.anbiya@gmail.com',
      'Highly Interest in Software Engineering and UI/UX',
      'https://github.com/Fizhu',
      'https://www.instagram.com/hafizhanbiya/',
      'https://www.facebook.com/hvyz.a/',
      AppAssets.imageProfile,
      'Just a simple man, do anything right, left the wrong side.');
}
