/**
 * dart 是强类型的语言：变量有自己的类型
 * dart 变量声明方式
 * 明确声明： 类型 变量名称=赋值
 * 类型推导：var /const/final/dynamic
 * 
 * 
 */
main(List<String> args) {
  //1.明确的声明（制定类型）
  String name = "hhh";
  int age = 18;
  double height = 1.99;

  const msg = "msg";
  final msg2 = "final";
  //const必须直接复制常量；final 可以通过运行时赋值  

  //dynamic 动态
  dynamic str = "abc";
  str = 456;
  print(str.runtimeType);
  
  print("${name} ${age} ${height} ${str}");

  print(name.runtimeType);

}