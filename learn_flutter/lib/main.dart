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
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContentWidgetStatus();
  }
}

class ContentWidgetStatus extends State<ContentWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    print("监听到点击计数按钮");
                    setState(() {
                      counter++;
                      print(counter);
                    });
                  },
                  child: Text("计数+1"),
                ),
                RaisedButton(
                  onPressed: () {
                    print("监听到点击计数按钮");
                    setState(() {
                      counter--;
                      print(counter);
                    });
                  },
                  child: Text("计数-1"),
                ),
              ],
            ),
            Text("当前计数:$counter", style: TextStyle(fontSize: 30),)
          ],
        )
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
