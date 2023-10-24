//TODO: att here all the stuffs you need to save/cached

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  Future save(String key, value) async {
    final pref = await SharedPreferences.getInstance();
    return pref.setString(key, value);
  }

  Future get(String key) async {
    final pref = await SharedPreferences.getInstance();
    return pref.getString(key);
  }
}
