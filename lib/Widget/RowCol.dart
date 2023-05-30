import 'package:flutter/material.dart';

class RowCol extends StatelessWidget {
  const RowCol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h=MediaQuery.of(context).size.height;
    var w=MediaQuery.of(context).size.width;
    return Scaffold(
appBar: AppBar(title: Text("Rows Columns"),backgroundColor: Colors.purple,),
    body: Container(
    height: 300,
    width: w,
    color: Colors.white24,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget> [
            Container(
              height: h/5,
              width: w/5,
              color: Colors.lightGreenAccent,
            ),

            Container(
              height: h/5,
              width: w/5,
              color: Colors.greenAccent,
            ),

            Container(
              height: h/5,
              width: w/5,
              color: Colors.pink,
            ),

            Container(
              height: h/5,
              width: w/5,
              color: Colors.amber,
            ),

            Container(
              height: h/5,
              width: w/5,
              color: Colors.blue,
            ),
            Container(
              height: h/5,
              width: w/5,
              color: Colors.lime,
            ),

          ],

        ),
      ),
    ),
    );
  }
}
