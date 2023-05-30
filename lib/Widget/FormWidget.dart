import 'package:flutter/material.dart';

class FromWidget extends StatefulWidget {
  const FromWidget({Key? key}) : super(key: key);

  @override
  State<FromWidget> createState() => _FromWidgetState();
}

class _FromWidgetState extends State<FromWidget> {
  @override
  String firstname = '';
  String mail = '';
  String password = '';
  final formkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(child: Text('Form Widget',style: TextStyle(fontSize: 30),)),
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Form(
                key: formkey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Enter your name'),
                     // key: ValueKey('First Name :'),
                      validator: (value) {
                        if (value.toString().isEmpty)
                          return 'First name not be NULL';
                        else
                          return null;
                      },
                     /* onSaved: (value) {
                        firstname = value.toString();
                      },*/
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Enter your mail'),
                      key: ValueKey(''),
                      validator: (value) {
                        if (value.toString().isEmpty)
                          return 'mail format wrong..!!';
                        else
                          return null;
                      },
                      onSaved: (value) {
                        mail = value.toString();
                      },
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(hintText: 'Enter your password'),
                      key: ValueKey('text'),
                      validator: (value) {
                        if (value.toString().length < 6)
                          return 'Minimun 6 digits';
                        else
                          return null;
                      },
                      onSaved: (value) {
                        password = value.toString();
                      },
                    ),
                    TextButton(
                        onPressed: () {
                          trysubmit();
                        },
                        child: Text('Submit'))
                  ],
                )),
          ),
        ),
      ),
    );
  }

  void trysubmit() {
    final isvalid = formkey.currentState!.validate();
    if (isvalid) {
      formkey.currentState!.save();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Ok'),
        ),
      );
    } else {
      print('Error');
    }
  }
}
