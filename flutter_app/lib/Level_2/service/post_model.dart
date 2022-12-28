class NewModels {
  int? userId;
  int? id;
  String? title;
  String? body;

  NewModels({this.userId, this.id, this.title, this.body});
  
  NewModels.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }
  // Postman'dan data bir map olarak geliyor.
  // Bunları bir  listeye ve modele cevirmemiz lazım.
  // Userıd = userid, id = id ata vs vs.

    // BURAYA KOD YAZILMAZZ !!!!!!!! BİR ŞEY YAPMAK İSTİYORSAN FUNCTİON İLE YAP YÖNET.

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    return data;
  }
}
// body dolduruyorduk postman'da. 
// Dataları doldurup toJson diyerek servise yolluyoruz. 