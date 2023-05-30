import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(50)),
                  overlayColor: MaterialStatePropertyAll(Colors.green),
                  backgroundColor: MaterialStatePropertyAll(Colors.deepPurple)),
              onPressed: () {},
              child: Text(
                "Press me",
                style: TextStyle(fontSize: 40, color: Colors.lightGreenAccent),
              )),
          SizedBox(height: 10,),
          Container(
            height: 50,
            width: 300,
            child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
                onPressed: () {},
                child: Text("Next")),
          )
        ],
      ),
    );
  }
}
