/**9.定义类的方法 */
main(List<String> args) {
  final per = Person();
  per.name="qiu";
  per.age = 14;
  per.eatting();
}

class Person {
  String name;
  int age;

  void eatting(){
    print("${this.name}在吃东西");
  }
}