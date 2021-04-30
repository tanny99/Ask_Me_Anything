import 'dart:ui';
import 'dart:math';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: ballpage(),
  ));
}
class ballpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Center(child: Text('Ask me anything!')),
        backgroundColor: Colors.blue,
      ),
      body: ball(),
    );

  }


}
class ball extends StatefulWidget {
  @override
  _ballState createState() => _ballState();
}

class _ballState extends State<ball> {
  @override
  int x=1,y=1;
  Widget build(BuildContext context) {
    return Center(child: FlatButton(
        onPressed: (){
          setState(() {
            y=x;
            x=Random().nextInt(5)+1;
            if(y==x){
              x=Random().nextInt(5)+1;
            }

          });

        },
        child: Image.asset('images/ball$x.png')));
  }
}
