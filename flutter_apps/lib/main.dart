import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    /// TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('邱的 Flutter Project'),
          centerTitle: true,
        ),
        body: HomeContent(),
      ),
    );
  }
}

/// 列表内容
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    /// TODO: implement build
    /// Column 内容超出会报错，换成listView就可以了
    return Padding(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: <Widget>[
          ProductItem('Apple1','Macbook Product1','https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg'),
          ProductItem('Apple2','Macbook Product2','https://tva1.sinaimg.cn/large/006y8mN6gy1g72imm9u5zj30u00k0adf.jpg'),
          ProductItem('Apple3','Macbook Product3','https://tva1.sinaimg.cn/large/006y8mN6gy1g72imqlouhj30u00k00v0.jpg'),
          ComputedWidget()
        ],
      ),
    );
  }
}

/// 继承StatefulWidget类 ，必须同时创建一个状态类，用户更新数据
class ComputedWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ComputedWidgetState();
  }
}

class ComputedWidgetState extends State<ComputedWidget> {
   int counter = 0;

   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.all(80),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  RaisedButton(
                    textColor: Colors.black,
                    onPressed: (){//匿名函数
                      print('11');
                      //counter++; // 写setState内部也可以，外面也可以
                      setState(() {
                        counter++;
                      });
                    },
                    child: Text('计数 + 1'),
                  ),
                  RaisedButton(
                    textColor: Colors.black,
                    onPressed: (){//匿名函数
                      print('11');
                      //counter++; // 写setState内部也可以，外面也可以
                      setState(() {
                        counter--;
                      });
                    },
                    child: Text('计数 - 1'),
                  ),
                ],
              ),
              Text('当前计数：$counter',style: TextStyle(fontSize: 25),),
            ],
          ),
        ),
      ),
    );
  }
}

/// StatelessWidget 不能实现计数器 ，要实现必须继承StatefulWidget
class ComputeNum extends StatelessWidget{
  final int counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.all(80),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                textColor: Colors.black,
                onPressed: (){//匿名函数
                  print('11');
                 // counter++; ///不能实现变量改变，因为是final类型
                },
                child: Text('计数 + 1'),
              ),
              Text('当前计数：$counter',style: TextStyle(fontSize: 25),),
            ],
          ),
        ),
      ),
    );
  }
}

/// widget中所有的属性都是不可改变的
class ProductItem extends StatelessWidget{
  final String title;
  final String subTitle;
  final String imgUrl;
  ProductItem(this.title,this.subTitle,this.imgUrl);

  @override
  Widget build(BuildContext context) {
    /// TODO: implement build
    return Container(
      padding: EdgeInsets.all(8),
//      decoration: BoxDecoration(
//        border: Border.all(
//          color: Colors.grey,
//          width: 2,
//        )
//      ),
      child: Column(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              color: Colors.orange
            ),
          ),
          Text(
            subTitle,
            style: TextStyle(
              fontSize: 18
            ),
          ),
          SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FadeInImage.assetNetwork(
              placeholder: "images/ic_device_image_default.png",
              image: imgUrl,
              fit: BoxFit.cover,
            ),
          ),
         /// Image.network(imgUrl)
        ],
      ),
    );
  }
}