class User {
  int id;
  // String username;
  String email;
  // String mobileNo;
  String password;
  // String image;

  User(
      {this.email,
      // this.mobileNo,
      // this.username,
      // this.image,
      this.id,
      this.password});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['colId'] = id;
    }
    // map['colUserName'] = username;
    map['colEmail'] = email;
    map['colPassword'] = password;
    // map['colMobile'] = mobileNo;
    // map['colImage'] = image;

    return map;
  }

  User.fromMapObject(Map<String, dynamic> map) {
    this.id = map['colId'];
    // this.username = map['colUserName'];
    this.email = map['colEmail'];
    // this.mobileNo = map['colMobile'];
    this.password = map['colPassword'];
    // this.image = map['colImage'];
  }
}
