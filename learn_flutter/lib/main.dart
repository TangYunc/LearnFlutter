import 'package:flutter/material.dart';

/**
 * 创建main函数
 * 执行runApp()函数
 * 传入widget-> Text Widget
 */

///main函数作为入口
void main() {
  runApp(
    MaterialApp(
      title: "hello world abc",//Android 多应用切换时会显示的标题
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              "我是标题"
          ),
        ),
        body: Center(
          child: Text(
            "hello world",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontSize: 30,
                color: Colors.orange
            ),
          ),
        ),
      ),
    )
  );
}
