import 'dart:io';

import 'package:shomping/api/ApiUtil.dart';
import 'package:shomping/customer/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shomping/api/ApiUtil.dart';

class Authentication {
  Future<User> register(String first_name, String last_name, String email,
      String password) async {
    Map<String, String> headers = {'accept': 'application/json'};
    Map<String, String> body = {
      'first_name': first_name,
      'last_name': last_name,
      'email': email,
      'password': password,
    };

    http.Response response =
        await http.post(ApiUtil.AUTH_REGISTER, headers: headers, body: body);
    if (response.statusCode == 201) {
      var body = jsonDecode(response.body);
      var data = body['data'];
      User user = User.fromjson(data);
      return user;
    }
    return null;
  }
}

Future<User> login(String email, String password) async {
  Map<String, String> headers = {
    'Accept': 'application/json',
  };
  Map<String, String> body = {
    'email': email,
    'password': password,
  };
  http.Response response =
      await http.post(ApiUtil.AUTH_LOGIN, headers: headers, body: body);
  if (response.statusCode == 200) {
    var body = jsonDecode(response.body);
    var data = body['data'];
    User user = User.fromjson(data);
  }
  return null;
}
