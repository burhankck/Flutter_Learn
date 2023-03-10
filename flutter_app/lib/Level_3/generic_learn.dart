// Bazı seneryolarda ne geleceğini bilemezsiniz. Bana bişey yolla fakat Burhan'ın arkadaşı olsun.

class UserManagement<T extends AdminUser> {
  final T admin;

  UserManagement(this.admin);
  void sayName(GenericUser user) {
    print(user.name);
  }

  int calculateMoney(List<GenericUser> users) {
    int sum = 0;
    for (var item in users) {
      sum += item.money;
    }
    int initialValue = admin.role == 1 ? admin.money : 0;

    final sumMoney = users.map((e) => e.money).fold(
        initialValue, (previousValue, element) => previousValue + element);

    final _monney = users.fold(initialValue,
        (previousValue, element) => previousValue + element.money);

    return _monney;
  }
}

Iterable<T>? showNames<T>(List<GenericUser> users) {
  // Bunu sadece  rol 1 olanlar
  if (T is String) {
    final names = users.map((e) => e.name).cast<T>();
    return names.cast<T>();
  }
  return null;
}

class BKModels<T> {
  final String name = 'bk';
  late final List<T> items;
}

class GenericUser {
  final String name;
  final String id;
  final int money;

  GenericUser(this.name, this.id, this.money);
  bool findUserName(String name) {
    return this.name == name;
  }
}

class AdminUser extends GenericUser {
  final int role;
  AdminUser(super.name, super.id, super.money, this.role);
}
