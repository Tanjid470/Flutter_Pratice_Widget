import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade700,
          title: Text(
            'Image Widget',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.blueAccent,
        image: DecorationImage(image:NetworkImage('https://scontent.fdac99-1.fna.fbcdn.net/v/t39.30808-1/340620783_890937765345876_7740305824492697715_n.jpg?stp=c0.107.320.320a_dst-jpg_p320x320&_nc_cat=101&ccb=1-7&_nc_sid=7206a8&_nc_eui2=AeF6tT1opXXQtFSszHmRwfd-mfhdIDO1-AGZ-F0gM7X4AXVZfXq_8macttirwhYgB5DWFG1xKzhG_sUO-5wOz6Je&_nc_ohc=faclLQu0nKcAX84xttb&_nc_ht=scontent.fdac99-1.fna&oh=00_AfDiRhx-gSB-RhrYoifxJxjeL0Ssbrsol33MzjhQiMPvyQ&oe=646C2D85'
        ),
          fit: BoxFit.cover,
        ),
        ),

      )
    );
  }
}
