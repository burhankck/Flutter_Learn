class User {
  String? name;
  String? number;
  String? url;

  User(this.name, this.number, this.url);

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    number = json['surname'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['surname'] = this.number;
    data['url'] = this.url;
    return data;
  }
}
