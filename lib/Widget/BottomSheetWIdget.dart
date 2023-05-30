import 'package:flutter/material.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Bottom Sheet"))),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  isDismissible: false,
                  enableDrag: true,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                  context: context,
                  backgroundColor: Colors.lightGreen,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          title: Text('Rayhan Sir'),
                          subtitle: Text("Head of CSE Dprt"),
                          onTap: (){Navigator.pop(context);},
                        ),
                        ListTile(
                          title: Text('Doha Sir'),
                          subtitle: Text("Ass.Head of CSE Dprt"),
                        ),
                        ListTile(
                          title: Text('Ahad Sir'),
                          subtitle: Text("Faculty of CSE Dprt"),
                        ),
                      ],
                    );
                  });
            },
            child: Text("Botom Sheet")),
      ),
    );
  }
}
