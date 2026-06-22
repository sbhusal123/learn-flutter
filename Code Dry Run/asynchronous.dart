// void getData(){

//   // simulate a delay
//   Future.delayed(Duration(seconds: 2), () {
//     print('Data fetched');
//   });

//   print('end of function');

// }

// void main(){
//   getData();
// }

// void getData() async {
//   String username = await Future.delayed(Duration(seconds: 2), (){
//     return 'Surya';
//   });

//   String bio = await Future.delayed(Duration(seconds: 1), (){
//     return "Student";
//   });

//   print("$username - $bio");
// }

// void main() {
//   getData();
// }

Future<String> getData()  {
  return Future.delayed(Duration(seconds: 2), (){
    return 'Surya';
  });
}


void main() async {
  String username = await getData();

  print(username);
}
