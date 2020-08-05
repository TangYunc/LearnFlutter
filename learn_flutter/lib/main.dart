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
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: LoginWidget(),
    );
  }
}

class LoginWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginWidgetStatus();
  }
}

class LoginWidgetStatus extends State<LoginWidget> {

  String username;
  String password;

  GlobalKey<FormState> formGlobalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: formGlobalKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              autovalidate: true,//验证是否为空
              decoration: InputDecoration(
                icon: Icon(Icons.people),
                labelText: "用户名",
              ),
              onSaved: (value) {
                print("username执行onSaved");
                this.username = value;
              },
              validator: (value) {
                if (value == null || value.length == 0) {
                  return "用户名不能为空";
                }
                return null;
              },
            ),
            TextFormField(
              autovalidate: true,//验证是否为空
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: "密码"
              ),
              onSaved: (value) {
                print("password执行onSaved");
                this.password = value;
              },
              validator: (value) {
                if (value == null || value.length == 0) {
                  return "密码不能为空";
                }
                return null;
              },
            ),
            SizedBox(height: 12),
            Container(
              width: double.infinity,
              height: 44,
              child: RaisedButton(
                  onPressed: () {
                    print("注册按钮点击");
                    formGlobalKey.currentState.save();
                    formGlobalKey.currentState.validate();//如果在初始化的时候autovalidate设置为true，这这里可以不用设置进行相应的验证
                    print("提交username: $username, password: $password");
              },
              child: Text("注册", style: TextStyle(fontSize: 20,color: Colors.white)),
              color: Colors.blue
              ),
            )
          ],
        )
    );
  }
}

class RegisterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegisterWidgetStatus();
  }
}

 class RegisterWidgetStatus extends State<RegisterWidget> {

  final textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController.addListener(() {
      print("监听到值的改变：${textEditingController.text}");
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.people),
              labelText: "username",
              hintText: "请输入用户名",
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 3)
              ),
              filled: true,
              fillColor: Colors.cyan
            ),
            onChanged: (value) {
              print("当前的值: $value");
            },
            onSubmitted: (value) {
              print("当前提交的值: $value");
            },
            controller: textEditingController,
          ),
        ],
      ),
    );
  }
 }


class RadiusImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.network(
        "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1963304009,2816364381&fm=26&gp=0.jpg",
//        width: 200,
//        height: 200,
      ),
    );
  }
}

class CircleImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipOval(
      child: Image.network(
          "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1963304009,2816364381&fm=26&gp=0.jpg",
        width: 200,
        height: 200,
      ),
    );
  }
}

/// 本地图片必须要在pubspec.yaml的文件里面将assets:的部分打开，并且将图片路径写入，然后点击右上角的put get
class AssetsImageDemo extends StatelessWidget {
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
