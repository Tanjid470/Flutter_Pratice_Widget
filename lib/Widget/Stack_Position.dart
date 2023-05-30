import 'package:flutter/material.dart';

class Stack_Position extends StatefulWidget {
  const Stack_Position({Key? key}) : super(key: key);

  @override
  State<Stack_Position> createState() => _Stack_PositionState();
}

class _Stack_PositionState extends State<Stack_Position> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack and Position'),
      ),
      body: Container(
        child: Center(
          child: Stack(
            children: <Widget>[
              Positioned(
                  child: Container(
                height: 200,
                width: 200,
                color: Colors.red,
              )),
              Positioned(
                  left: 50,
                  bottom: 50,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  )),
              Positioned(
                  left: 75,
                  bottom: 75,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://scontent.fdac99-1.fna.fbcdn.net/v/t39.30808-6/345069927_113148578442337_6066420386609702076_n.jpg?stp=dst-jpg_s960x960&_nc_cat=108&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeHrkhLa82Poa2AaUKFe8ZsCI-XQXl3PCqAj5dBeXc8KoCHLv80oRC4oeClOCXDaNQraIkuyPDOmBUkEIlrT6WgZ&_nc_ohc=SXKxGc-qdQ8AX-GGoF7&_nc_ht=scontent.fdac99-1.fna&oh=00_AfCnM8vU3dPM6ZhCU0P2tPlGDIQoHpHxEk6c-9d_RCAEqQ&oe=6474962B'))

                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
