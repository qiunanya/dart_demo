main(List<String> args) {
  var p = Person();
    p.running();
    p.swimming();
}

mixin Runner{
  void running(){
    print('奔跑');
  }
}
mixin Swimer{
  void swimming(){
    print('游泳');
  }
}

// implements某个接口时，所有的方法都必须被重写
class Person with Runner, Swimer {
   
}