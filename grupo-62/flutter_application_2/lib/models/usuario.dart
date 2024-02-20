import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  late int id;
  late String email;
  late String first_name;
  late String last_name;
  late String avatar;

  User();

  User.fromJson(Map<String, dynamic> jsonUser) {
    id = jsonUser["id"] ?? 0;
    email = jsonUser["email"] ?? "";
    first_name = jsonUser["first_name"] ?? "";
    last_name = jsonUser["last_name"] ?? "";
    avatar = jsonUser["avatar"] ?? "";
  }

  Future<List<User>> getUserFromApi() async {
    Uri url = Uri.parse("https://reqres.in/api/users?page=2");
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String body = response.body;
      Map<String, dynamic> jsonUser = jsonDecode(body);
      List<User> lista_usuarios = [];
      for (dynamic i in jsonUser["data"]) {
        lista_usuarios.add(User.fromJson(i));
      }
      return lista_usuarios;
    } else {
      throw "Error al cargar la api";
    }
  }

  @override
  String toString() {
    // TODO: implement toString
    return "$first_name $last_name";
  }
}
