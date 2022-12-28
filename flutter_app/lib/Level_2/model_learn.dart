class PostModel {
  int? userId;
  int? id;
  String? title;
  String? body;
  // herhangi bir veriable initialze etmek zorundasın.
  // initialze = Bu deger ne olacak, kim dolduracak, bunları vermek zorunlu.
  // 1. Veriable hepsi null gelebilir.
}

class PostModel1 {
  int userId;
  int id;
  String title;
  String body;
  //2. constructur kendin oluşturursun.
  PostModel1(this.userId, this.id, this.title, this.body);
}

class PostModel2 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel2(this.userId, this.id, this.title, this.body);
  // Bu Veriable sadece constructur zamanında gelebilir initialze olabilir.
  // Diger türlü datalar gelemez.
}

class PostModel3 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel3(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});
// Musteri named girsin named girmek = Yan yana yazsın veriable,
// Bu yüzden süslü paranteze alıyoruz.
// Üstteki ile aynı fakat named parametre alır.
}

class PostModel4 {
  final int _userId;
  final int _id;
  final String _title;
  final String _body;

  int get userId => userId;

  PostModel4(
      {required int userId,
      required int id,
      required String title,
      required String body})
      : _userId = userId,
        _id = id,
        _title = title,
        _body = body;

// {
//  _userId = userId;
//  _id = id;
//  _title = title;
//  _body = body;
// }
}

class PostModel5 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel5(
      {required int userId,
      required int id,
      required String title,
      required String body}) {
    _userId = userId;
    _id = id;
    _title = title;
    _body = body;
    //Late kullanıyoruz, Sonradan gelecek değer,
    // Constructur anında sonradan gelecek. Diğer zamanlarda hata verir.
  }
}

class PostModel6 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel6({
    int userId = 0,
    int id = 0,
    String title = '',
    String body = '',
  }) {
    _userId = userId;
    _id = id;
    _title = title;
    _body = body;
  }
}

class PostModel7 {
  final int? userId;
  final int? id;
  final String? title;
   String? body;

  PostModel7({this.userId, this.id, this.title, this.body});
// Service icin en uygun kullanim.
  void updateBody(String? data) {
    if (data != null && data.isNotEmpty) {
      body = data;
    }
  }

  PostModel7 copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PostModel7(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}
