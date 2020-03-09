main(List<String> args) {
  print(sum(11, 33));
  print(111);
  noarg("qiu");
   noarg("qiu",11);

   funPara("yun");

}

int sum (int a,int b){
  return a+b;
}

/**
 * dart函数参数分为：必传参数和可选参数
 * 可选参数 隐式可选参数和命名可选参数
 * 隐式可选参数:[]
 * 命名可选参数:{}
 */
void noarg(String name,[int age,double h]){
  print("${name} ${age} ${h}");
}

void funPara(String name,{int age=25,double h=0.22}){
  print("name=${name} age=${age} h=${h}");
}