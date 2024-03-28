//import 'package:hello_word/hello_word.dart' as hello_word;
//import 'package:characters/characters.dart';
import 'package:hello_word/contador.dart';

void main(List<String> arguments) {
  /* //print('Hello world: ${hello_word.calculate()}!');
  const texto = 'Hola Mundo!👍';
  //print(texto.characters.length);
  print(texto.substring(5));
  print(texto.substring(2, 7)); */
  Persona<int> tom = Persona<int>(12, "Tom"); //Especificamos
  print(tom.id);

  Persona<String> bob = Persona<String>('abc', "Bob");
  print(bob.id);
  //Listas genericas
  List<int> numero = [];
  numero.addAll([
    1,
    2,
    4,
    8,
  ]);
  print(numero);
  List listString = <String>["Hola", "Perro", "Coco"];
  print(primerElemento(numero));
  print(primerElemento(listString));

  print(agregar(10, numero));

  Contador<double> doubles = Contador();
  doubles.addAll([1.0, 1.2, 2.0, 3.0]);
  doubles.total();

  Contador<int> enteros = Contador();
  enteros.addAll([1, 2, 3, 4]);
  enteros.total();
}

//Genericos
class Persona<T> {
  T id;
  String? nombre;
  Persona(this.id, this.nombre);
}

//Método generico
T primerElemento<T>(List<T> lista) {
  T primer = lista[0];
  return primer;
}

//Restringir tipos
T agregar<T extends num>(value, List<T> items) {
  var suma = value;
  items.forEach((value) {
    suma += value;
  });
  return suma;
}
