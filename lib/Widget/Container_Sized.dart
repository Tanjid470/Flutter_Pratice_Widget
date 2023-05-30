import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Test",
          ),
          backgroundColor: Colors.purple,
        ),
        body: Center(
            child: Container(
          padding: EdgeInsets.all(10),
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle, // We can take Circle
//Next Line use for hole Container
            // borderRadius: BorderRadius.circular(20),
            borderRadius:
                BorderRadius.only(bottomRight: Radius.elliptical(100, 150)),
            color: Colors.orange,
            border: Border.all(
              width: 10,
              color: Colors.white,
            ),
            boxShadow: [
              BoxShadow(blurRadius: 30, spreadRadius: 10, color: Colors.amber)
            ],
          ),
          child: Center(
            child: Text(
              "Container",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black54, fontSize: 30,fontStyle:FontStyle.italic),
            ),
            /*child: Container(
              height: 200,
              width: 200,
              color: Colors.blue,
              child: Text(
                "Container",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),*/
          ),
        )),
      ),
    );
  }
}
