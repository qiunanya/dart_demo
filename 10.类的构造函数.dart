/**构造函数 当类中没有构造函数，默认创造无参构造函数 */
main(List<String> args) {
  // 类明确提供构造函数，不在使用默认函数
    final p = Person('qiuqiu',age: 15);
    print('${p.name} ${p.age}');

    Map<String,dynamic> info={
       "name":"qqq",
       "age":15,
       "height":1.96
    };

   final p1 = Person.fromMap(info);
   print(p1);

   //retangle
   final rs= Rectangle(10,20);
   print(rs);

   final f = Rectangle.fromList(1,55);
   print(f);
}

class Person{
  String name;
  int age;
  double height;
  

  //自定义构造函数 []:隐式传参，{}：命名传参：传参时需要写属性名
  // 改造一：将参数变成可选参数
  // Person(String name,[int age,double height]){
  //     this.name = name;
  //     this.age = age;
  //     this.height = height;
  // }

  // 改造二：语法糖写法(简写)
   Person(this.name,{this.age,this.height});

  //fromMap 命名构造函数,解决dart函数命名不能重复问题
   Person.fromMap(Map<String,dynamic> map){
      this.name = map['name'];
      this.age = map['age'];
      this.height = map['height'];
   }
  

  void eat(){
    print("${name} 在吃东西");
  }

  @override
  String toString() {
    return 'name:$name age:$age height:$height';
  }


}


class Rectangle{
   int width;
   int height;
   int area;
  
  //语法糖写法
   Rectangle(this.width,this.height){
     this.area = width*height;
   }

   // 初始化列表
   Rectangle.fromList(this.width,this.height):area = width*height;

   @override
  String toString() {
    
    return 'width:$width height:$height area:$area';
  }

}