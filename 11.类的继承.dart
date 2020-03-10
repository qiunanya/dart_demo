main(List<String> args) {
   final p = Person('zhang',12);
   p.age=15;
   p.name ='qiu';
   p.eat();
   print(p);
}

class Animal{
   int age;
   Animal(this.age);
   void eat(){
     print('在吃东西');
   }

}

class Person extends Animal{
  String name;

  Person(this.name,int age):super(age);
  @override
  void eat() {
    print('$name 再吃东西');
  }
  @override
  String toString() {
   
    return 'name:$name age:$age';
  }

}