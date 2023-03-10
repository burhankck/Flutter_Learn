import 'dart:math';

import 'package:flutter_app/Level_3/generic_learn.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() => {});

  test('User calculete', () {
    final users = [
      GenericUser('bk', '11', 10),
      GenericUser('ak', '12', 10),
      GenericUser('sk', '13', 20),
    ];
    final usersmanagement = UserManagement(AdminUser('Admins', '1', 15, 1));
    final result =
        usersmanagement.calculateMoney(users);
     final response = usersmanagement;
    expect(result, 55);
  });
}
