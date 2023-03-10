import 'dart:convert';

import 'package:flutter_app/Level_2/cache/shared_manager.dart';
import 'package:flutter_app/Level_2/cache/user_model.dart';

import '../shared_learn_cache.dart';

class UserCacheManager {
  final SharedManager sharedManager;

  UserCacheManager(this.sharedManager);

  Future<void> saveItems(List<User> items) async {
    //compute ile yapılabilir.
    final _items =
        items.map((element) => jsonEncode(element.toJson())).toList();
    await sharedManager.saveStringItems(SharedKeys.users, _items);
  }

  List<User>? getItems() {
    //compute ile yapılabilir.
    final itemString = sharedManager.getStrings(SharedKeys.users);
    if (itemString?.isNotEmpty ?? false) {
      return itemString!.map((element) {
        final json = jsonDecode(element);
        if (json is Map<String,dynamic>) {
          return User.fromJson(json);
        }
        return User('', '', '');
      }).toList();
    }
    return null;
  }
}
