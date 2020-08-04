import 'package:flutter/material.dart';

/**
 * 创建main函数
 * 执行runApp()函数
 * 传入widget-> Text Widget
 */

///main函数作为入口
//void main() {
//  runApp(
//    MyApp()
//  );
//}

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "hello world abc",//Android 多应用切换时会显示的标题
      home: Scaffold(
          appBar: AppBar(
            title: Text(
                "我是标题"
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
    return Center(
      child: TextWidget()
    );
  }
}

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      "hello world",
      textDirection: TextDirection.ltr,
      style: TextStyle(
          fontSize: 30,
          color: Colors.orange
      ),
    );
  }
}