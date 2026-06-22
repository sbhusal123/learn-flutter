void main() {
  // print("Hello world")

  // var name = "asdasd";
  // print(name);

  // num x = 10; // can be int or double
  // num y = 10.5;
  // num z = -10.5;
  // print(x);
  // print(y);
  // print(z);

  // String name = "Surya Bhusal";
  // print(name);

  // bool isActive = false;
  // isActive = true;
  // print(isActive);

  // List<String> names = ["Surya", "Bhusal"];
  // names.add("Ramesh");
  // names.remove("Surya");
  // print(names);

  // dynamic foo = "Hello";
  // foo = 123;
  // print(foo);

  // Map<String, num> ages = {"Surya": 22, "Ram": 20};
  // print(ages);

  List<int> nums = [1, 2, 3, 4, 5];

  List<int> even = nums.where((num) => num % 2 == 0).toList();
  print(even);
}
