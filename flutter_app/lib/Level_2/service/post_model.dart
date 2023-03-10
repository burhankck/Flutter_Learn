class NewModels {
  int? userId;
  int? id;
  String? title;
  String? body;
  
  // BURAYA KOD YAZILMAZ !!!!

 // Servisten data geliyorsa her zaman gelmeyebilir,  Null olmalı.
  NewModels({this.userId, this.id, this.title, this.body});

  NewModels.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  //Postman'dan data bir map olarak geliyor, Bu mapi bir listeye modele cevirmemiz lazim.

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['body'] = this.body;
    return data;
  }

  // Projede newModel icindeki dataları doldurucam, toJson diyerek servise yolluyacağım
}


