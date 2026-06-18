// String greet(String name) {
//   return "Hello, $name";
// }

// String greet(String name) => "Hello, $name";

// void main() {
//   String foo = greet("Surya");
//   print(foo);
// }

String greet(String name) => "Hello $name";

void main() {
  String name = "Surya";

  dynamic foo = greet(name);

  print(foo);
}
