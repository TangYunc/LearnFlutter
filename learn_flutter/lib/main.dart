import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
                "计数器"
            ),
          ),
          body: ContentWidget()
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LocalImageDemo();
  }
}

class LocalImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Image.asset("assets/images/2.jpg");
  }
}

class NetworkImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.purple,
          child: Image.network(
              "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2534506313,1688529724&fm=26&gp=0.jpg",
//            fit: BoxFit.fill,
          repeat: ImageRepeat.repeatY,
          ),
        )
    );
  }
}

class CustomButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(

      child: RaisedButton(
        color: Colors.red,
        onPressed: () => print("RaisedButton点击"),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.people, color: Colors.white),
            SizedBox(width: 10),
            Text(
              "自定义按钮",
              style: TextStyle(color: Colors.white, fontSize: 20))
          ],
        ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        RaisedButton(onPressed: () => print("RaisedButton被电击了"), child: Text("RaisedButton")),
        FlatButton(onPressed: () => print("FlatButton被电击了"), child: Text("FlatButton")),
        FloatingActionButton(onPressed: () => print("FloatingActionButton被电击了"), child: Text("FloatingActionButton")),
        OutlineButton(onPressed: () => print("RawMaterialButton被电击了"), child: Text("RawMaterialButton")),
      ],
    );
  }
}

class TextRichDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text.rich(
      TextSpan(
          children: [
            TextSpan(
                text: "哈哈哈哈",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                )
            ),
            TextSpan(
                text: "舒适",
                style: TextStyle(fontSize: 18)
            ),
            TextSpan(
                text: "\n的发售的福利康师傅时间肯定会恐惧阿贾克斯把v数据库的v北京",
                style: TextStyle(color: Colors.pink)
            )
          ]
      ),
      textAlign: TextAlign.center,
    );
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      "《定风波》 ——苏轼\n 八百里分麾下炙 五十弦翻塞外声 沙场秋点兵",
      style: TextStyle(
        fontSize: 20,
        color: Color(0xf5f6f5000)
      ),
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.center,
//        textScaleFactor: 2
    );
  }
}
