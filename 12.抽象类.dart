main(List<String> args) {
  
  Circle c= Circle(10);
  calcuArea(c);

  Rectangle r= Rectangle(1.32,25.36);
  calcuArea(r);

}
//抽象类作用于多态的实现
//抽象类不被实例化
//抽象类可以定义抽象方法
abstract class Person{
  
}

abstract class Shape{
   getArea();
}

class Circle extends Shape{
  double r;
  Circle(this.r);
  double getArea(){
    return r*r*3.14;
  }
}

class Rectangle extends Shape{
  double width;
  double height;
  Rectangle(this.width,this.height);
  double getArea(){
    return width * height;
  }

}

//计算面积 的方法
//通用方法
void calcuArea(Shape s){
  print(s.getArea());

}