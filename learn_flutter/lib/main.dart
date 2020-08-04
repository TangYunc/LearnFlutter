import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TYC")
        ),
        body: HomeContentWidget(),
      ),
    );
  }
}

class HomeContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            PrudectItem("Apple1", "AppleProduct1", "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1596536223758&di=130e4aa534599e967cd9c74f343b12c0&imgtype=0&src=http%3A%2F%2Fmedia-cdn.tripadvisor.com%2Fmedia%2Fphoto-s%2F01%2F3e%2F05%2F40%2Fthe-sandbar-that-links.jpg"),
            PrudectItem("Apple2", "AppleProduct2", "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1596536223758&di=08dbcbee1aa25f8f874b47413b768753&imgtype=0&src=http%3A%2F%2Fmedia-cdn.tripadvisor.com%2Fmedia%2Fphoto-s%2F07%2F96%2Faf%2F8a%2Ftup-island.jpg"),
            PrudectItem("Apple3", "AppleProduct3", "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1596536223758&di=d41225ba446008ba2f0595950744894c&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Ff7d4b8e5093aff7691a66baf5d8693b8e8dc0f681b767-L4ZMb0_fw658")
          ],
        ),
      ),
    );
  }
}

/// Widget中所有的属性都是不可变的
class PrudectItem extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imaURL;

  PrudectItem(this.title, this.subTitle, this.imaURL);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          border: Border.all(
            width: 3
        ),
      ),
      child: Column(
        children: <Widget>[
          Text(title, style: TextStyle(fontSize: 20),),
          SizedBox(height: 10),
          Text(subTitle, style: TextStyle(fontSize: 18),),
          SizedBox(height: 10),
          Image.network(imaURL)
        ],
      ),
    );
  }
}
