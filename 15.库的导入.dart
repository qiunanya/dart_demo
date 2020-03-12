main(List<String> args) {
  // 导库三种方式
//   import语句用来导入一个库，后面跟一个字符串形式的Uri来指定表示要引用的库，语法如下：
// import '库所在的uri';

// 复制代码常见的库URI有三种不同的形式

// 来自dart标准版，比如dart:io、dart:html、dart:math、dart:core(但是这个可以省略)

// //dart:前缀表示Dart的标准库，如dart:io、dart:html、dart:math
// import 'dart:io';

// 复制代码
// 使用相对路径导入的库，通常指自己项目中定义的其他dart文件

// //当然，你也可以用相对路径或绝对路径的dart文件来引用
// import 'lib/student/student.dart';

// 复制代码
// Pub包管理工具管理的一些库，包括自己的配置以及一些第三方的库，通常使用前缀package

// //Pub包管理系统中有很多功能强大、实用的库，可以使用前缀 package:
// import 'package:flutter/material.dart';

// 复制代码库文件中内容的显示和隐藏
// 如果希望只导入库中某些内容，或者刻意隐藏库里面某些内容，可以使用show和hide关键字

// **show关键字：**可以显示某个成员（屏蔽其他）
// **hide关键字：**可以隐藏某个成员（显示其他）

// import 'lib/student/student.dart' show Student, Person;

// import 'lib/student/student.dart' hide Person;

// 复制代码库中内容和当前文件中的名字冲突
// 当各个库有命名冲突的时候，可以使用as关键字来使用命名空间
// import 'lib/student/student.dart' as Stu;

// Stu.Student s = new Stu.Student();



}