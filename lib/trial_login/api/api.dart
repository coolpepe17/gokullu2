import 'package:http/http.dart' as http;
import 'dart:convert';
// import '../model/login_model.dart';

// --------------------------------------------------

Future loginUser(String email, String password) async {
  String url = 'https://164.100.207.5/gokullu/service1.svc/login?';
  final response = await http.post(url,
      headers: {'Accept': 'Application/json'},
      body: {'email': email, 'password': password});
  var convertedDatatoJson = jsonDecode(response.body);
  return convertedDatatoJson;
}
// --------------------------------------------------

// class APIService {
//   Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
//     String url = 'https://164.100.207.5/gokullu/service1.svc/login?';
//     // String url = "https://reqres.in/api/login";

//     final response = await http.post(url, body: requestModel.toJson());
//     if (response.statusCode == 200 || response.statusCode == 400) {
//       return LoginResponseModel.fromJson(
//         json.decode(response.body),
//       );
//     } else {
//       throw Exception('Failed to load data!');
//     }
//   }
// }
