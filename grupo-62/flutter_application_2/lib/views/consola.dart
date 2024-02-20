import 'package:flutter_application_2/controllers/JokeController.dart';
import 'package:flutter_application_2/controllers/JuegoController.dart';
import 'package:flutter_application_2/controllers/UserController.dart';
import 'package:flutter_application_2/models/Joke.dart';
import 'package:flutter_application_2/models/usuario.dart';

// Ejercicio Adivinanza

// void main(List<String> args) async {
//   JuegoController juegoController = JuegoController();
//   String pregunta = await juegoController.obtenerPreguntaHttp();
//   print(pregunta);
//   String respuesta = juegoController.ingresarRespuesta();
//   bool resultado = juegoController.obtenerResultado(respuesta);
//   print("Resultado:${resultado ? "Gano" : "Perdio "}");
// }

/* void main(List<String> args) async {
  JokeController controller = JokeController();
  Joke joke = controller.getJoke();
  joke = await joke.getJokeFromApi();
  print(joke.value);
} */

void main(List<String> args) async {
  UserController controller = UserController();
  User user = controller.getUser();
  List<User> lista = await user.getUserFromApi();
  print(lista);
}
