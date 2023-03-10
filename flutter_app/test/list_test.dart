import 'package:flutter_app/Level_3/generic_learn.dart';
import 'package:flutter_app/product/widget/card/high_card.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {});
  test('List best of', () {
    List<GenericUser> users = [
      GenericUser('bk', '11', 10),
      GenericUser('ak', '12', 10),
      GenericUser('sk', '13', 20),
    ];

    List<HighCard> highCards = users.map((e) {
      return HighCard(items: e.name.split('').toList());
    }).toList();

    try {
      users.singleWhere((element) => element.findUserName('bk'));
    } catch (e) {
      print(e);
    }
  });
}
