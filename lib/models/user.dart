class User {
  int pk;
  String name;
  String email;
  String phone;
  String gender;
  String birthDate;
  List<String> skills;

  User(
      {this.pk,
      this.name,
      this.email,
      this.phone,
      this.gender,
      this.birthDate,
      this.skills});

  User.fromJson(Map<String, dynamic> json) {
    pk = json['pk'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    gender = json['gender'];
    birthDate = json['birth_date'];
    skills = json['skills'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pk'] = this.pk;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['gender'] = this.gender;
    data['birth_date'] = this.birthDate;
    data['skills'] = this.skills;
    return data;
  }
}
