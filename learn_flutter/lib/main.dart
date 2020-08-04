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

class ContentWidget extends StatefulWidget {
  
  ContentWidget() {
    print("ContentWidget的构造函数被调用");
  }
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    print("ContentWidget的createState被调用");
    return ContentWidgetStatus();
  }
}

class ContentWidgetStatus extends State<ContentWidget> {

  int counter = 0;

  ContentWidgetStatus()  {
    print("ContentWidgetStatus的构造函数被调用");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("ContentWidgetStatus的initState被调用");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("ContentWidgetStatus的didChangeDependencies被调用");
  }

  @override
  void didUpdateWidget(ContentWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("ContentWidgetStatus的didUpdateWidget被调用");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("ContentWidgetStatus的build被调用");
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: Text("计数+1"),
          ),
          Text("hello world: $counter", style: TextStyle(fontSize: 30)),
        ],
      ),
    );
  }
}

//class ContentWidget extends StatelessWidget {
//  final int counter;

//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Center(
//      child: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          RaisedButton(
//              onPressed: () {
//                print("监听到点击计数按钮");
////                counter++;
////                print(counter);
//              },
//          ),
//          Text("当前计数:0", style: TextStyle(fontSize: 30, color: Colors.red))
//        ],
//      )
//    );
//  }
//}
