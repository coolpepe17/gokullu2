class User {
  String _username;
  String _password;

  User(this._username, this._password);

  User.map(dynamic obj) {
    this._username = obj['username'];
    this._password = obj['password'];
  }

  String get username => _username;
  String get password => _password;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["username"] = _username;
    map["password"] = _password;
    return map;
  }
}

// class User {
//   int id;
//   // String username;
//   String email;
//   // String mobileNo;
//   String password;
//   // String image;

//   User(
//       {this.email,
//       // this.mobileNo,
//       // this.username,
//       // this.image,
//       this.id,
//       this.password});

//   Map<String, dynamic> toMap() {
//     var map = Map<String, dynamic>();
//     if (id != null) {
//       map['colId'] = id;
//     }
//     // map['colUserName'] = username;
//     map['colEmail'] = email;
//     map['colPassword'] = password;
//     // map['colMobile'] = mobileNo;
//     // map['colImage'] = image;

//     return map;
//   }

//   User.fromMapObject(Map<String, dynamic> map) {
//     this.id = map['colId'];
//     // this.username = map['colUserName'];
//     this.email = map['colEmail'];
//     // this.mobileNo = map['colMobile'];
//     this.password = map['colPassword'];
//     // this.image = map['colImage'];
//   }
// }
