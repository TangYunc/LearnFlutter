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
