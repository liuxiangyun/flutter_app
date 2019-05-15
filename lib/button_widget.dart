import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FlatButton(
//            color: Colors.deepOrange,
            child: Text('FlatButton'),
            onPressed: () {},
          ),
          OutlineButton(
            child: Text('OutlineButton'),
            onPressed: () {},
          ),
          RaisedButton(
            color: Colors.green,
            child: Text('RaisedButton'),
            onPressed: () {},
          ),
          FloatingActionButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Text('FloatingActionButton'),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),

          RaisedButton(
            color: Colors.green[500],
//            highlightColor: Colors.green[800],
//            disabledColor: Colors.grey,
//            textColor: Colors.white,
//            splashColor: Colors.grey,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
            child: Text('Submit'),
            onPressed: (){},
            colorBrightness: Brightness.dark,
          )
        ],
      ),
    );
  }
}
