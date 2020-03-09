main(List<String> args) {
   test(foo);
}

void foo(){
  print("hell ....");
}

void test(Function fuc){
 fuc();
}