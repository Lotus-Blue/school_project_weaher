import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_project/app/about.dart';

class ShowModalBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
        child: InkWell(
          child: Icon(
            Icons.list,
            color: Colors.white,
          ),
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context){
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    //每列内容
                    ListTile(
                      title: Text("关于",textAlign: TextAlign.left,style: TextStyle(fontSize: 15),),
                      trailing: Icon(Icons.info,color:Colors.black,size: 22.0),
                      onTap: ()=>Navigator.push(context,new MaterialPageRoute(builder: (context) => new AboutMePage())),
                    ),
                    //每列内容
                    ListTile(
                      title: Text("退出",textAlign: TextAlign.left,style: TextStyle(fontSize: 15),),
                      trailing: Icon(Icons.power_settings_new,color:Colors.black,size: 22.0),
                      onTap: ()async{
                        await pop();
                      },
                    ),
                  ],
                );
              }
            );
          },
        ),
      padding: EdgeInsets.only(top: 5.0, right: 20.0),
      alignment: Alignment.centerRight,
    );
  }
  static Future<void> pop() async {
    await SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  }
}