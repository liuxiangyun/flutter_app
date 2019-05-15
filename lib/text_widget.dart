import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('文本 字体样式'),
      ),
      body: Column(
        children: <Widget>[
          //
          Text(
            '我是文本' * 3,
          ),

          Text(
            '我要居中' * 6, //*  文字复制几遍
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25.0),
          ),

          Text(
            '显示不下，裁剪。。。' * 5,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textScaleFactor: 1.5,
            //文字缩放  相对于fontSize
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25.0, // 字体绝对大小
                color: Colors.red,
                height: 1.5, //行高  相对于fontSize,实际高度= fontSize*height
                background: Paint()..color = Colors.blue),
          ),

          Text(
            '随系统字体大小调整' * 5,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,

            //获取系统默认缩放比例  ，默认1.0  ，如果设置此值，那么该字体随系统字体大小变化而变化
            textScaleFactor: MediaQuery.textScaleFactorOf(context),
            //文字缩放  相对于fontSize

            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25.0, // 字体绝对大小
                color: Colors.red,
                height: 1.5, //行高  相对于fontSize,实际高度= fontSize*height
                background: Paint()..color = Colors.blue),
          ),

          Text.rich(
            TextSpan(
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.yellow,
              ),
              text: '我是富文本',
              children: <TextSpan>[
                TextSpan(text: 'Home'),
                TextSpan(
                  text: 'http://www.google.com',
                  style: TextStyle(
                    color: Colors.blue[100],
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blue,
                    decorationStyle: TextDecorationStyle.solid,
                  ),
                ),
              ],
            ),
          ),

          RichText(
            maxLines: 1,
            text: TextSpan(
              text: "RichText。。。" * 10,
              children: <TextSpan>[
                TextSpan(
                  text: "RichText。。。" * 10,
                )
              ],
            ),
          ),

          DefaultTextStyle(
            //所有的子 widget TextStyle 继承 defaultTextStyle
            style: TextStyle(
              color: Colors.deepOrange,
            ),
            child: Column(
              children: <Widget>[
                Text('i am xxx'),
                Text('i am xxx'),
                Text(
                  'i am xxx',
                  style: TextStyle(
                    inherit: false, //不继承DefaultTextStyle
                    color: Colors.cyan,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
