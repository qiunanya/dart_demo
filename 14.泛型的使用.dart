main(List<String> args) {
    Location l = Location<int>(1,3);
    Location lo = Location<double>(1.2,3);
    Location loc = Location<String>('qiu','yun');
    loc.add();
}

//返回第一个元素
T getFirst<T>(List<T> list){
  return list[0];
}

class Location<T>{
   T x;
   T y;

   Location(this.x,this.y);

   void add(){
      print('$x, $y');
   }
}