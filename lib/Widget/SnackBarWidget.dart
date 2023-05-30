import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snack Bar"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          height: 80,
          width: 150,
          child: ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(
                  action: SnackBarAction(
                      label: 'Undo', textColor: Colors.green, onPressed: () {}),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  behavior: SnackBarBehavior.floating,
                  content: Text(
                    'Occur an error..!!',
                    style: TextStyle(color: Colors.red),
                  ),
                  duration: Duration(seconds: 1),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: Text(
                'SnackBar',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
        ),
      ),
      // Pratice
      /*body: Center(
        child: Container(
          height: 80,
          width: 150,
          child: ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(content: Text("Error"),
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  duration: Duration(milliseconds: 100),
                  action: SnackBarAction(label: 'Undo', onPressed: (){}),
                  behavior:SnackBarBehavior.floating,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackbar);

              },
              child: Text('Press')),
        ),
      ),*/
    );
  }
}
