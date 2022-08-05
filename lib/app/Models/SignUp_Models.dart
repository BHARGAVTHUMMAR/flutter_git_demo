class SignUpModel {
  String? name;
  String? mobile;
  String? countryCode;
  String? email;
  String? password;

  SignUpModel(
      {this.name, this.mobile, this.countryCode, this.email, this.password});

  SignUpModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    mobile = json['mobile'];
    countryCode = json['countryCode'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['mobile'] = this.mobile;
    data['countryCode'] = this.countryCode;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}