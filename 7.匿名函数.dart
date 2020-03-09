main(List<String> args) {
  List<String> list = ['a','kuli',"zms"];

  //直接传入函数，匿名函数
  list.forEach((e){
    print(e);
  });
//如果你的函数只有一行代码，可以使用箭头函数
list.forEach((e)=>{print(e)});

//list元素拼接
final ls = List.from(list.map((e){
  return e+'ss';
}));
print(ls[1]);

}
