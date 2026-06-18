// class AuthHandler {
//   String email = '';

//   String password = '';

//   void login() {
//     if (this.email == "test@gmail.com" && this.password == "test") {
//       print("Login Success");
//     } else {
//       print("Invalid cerdentials, login failed.");
//     }
//   }
// }

// void main() {
//   AuthHandler obj = AuthHandler();
//   obj.email = "test@gmail.com";
//   obj.password = "test";
//   obj.login();
// }

// class AuthHandler {
//   String username = '';

//   String password = '';

//   AuthHandler(String username, String password) {
//     this.username = username;
//     this.password = password;
//   }

//   void login() {
//     if (this.username == "test@gmail.com" && this.password == "test") {
//       print("Success");
//     } else {
//       print("Invalid credentials, login attempt failed.");
//     }
//   }
// }

// void main() {
//   AuthHandler obj = AuthHandler("test@gmail.com", "test");
//   obj.login();
// }

class Person {
  String name = "";
  int age = 0;

  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }
}

class Student extends Person {
  int rollNo = 0;

  // calling parent constructor using super keyword
  Student(String name, int age, int rollNo) : super(name, age) {
    this.rollNo = rollNo;
  }
}

void main() {
  Student s = Student("Surya", 22, 10);

  print("Name: ${s.name}");
  print("Age: ${s.age}");
  print("Roll No: ${s.rollNo}");
}
