import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:weather_project/app/page_home.dart';


void main(){
  debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      /*定义*跳转路由*/
      // routes: <String, WidgetBuilder> {
      //   '/home': (BuildContext context) => HomePage(某个类中的成员，例如a.id),
      // },
      home: HomePage('101280102'),//没有定位功能，所以将默认城市定位广州
    );
  }
}



