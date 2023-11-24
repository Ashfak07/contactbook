import 'dart:convert';

import 'package:contackbook/model/usermodel.dart';
import 'package:http/http.dart' as http;

class HomeController {
  Welcome? welcomemodel;
  Future<void> Fetchdata() async {
    http.Response response;
    response = await http.get(Uri.parse('https://fakestoreapi.com/users/'));
    if (response.statusCode == 200) {
      response.body;
      var decode = jsonDecode(response.body);

      welcomemodel = Welcome.fromJson(decode ?? '');
      print(welcomemodel!.email.toString());
    } else {
      print('do data');
    }
  }
}
