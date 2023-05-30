import 'package:flutter/material.dart';

class Cloning_A_UI extends StatefulWidget {
  const Cloning_A_UI({Key? key}) : super(key: key);

  @override
  State<Cloning_A_UI> createState() => _Cloning_A_UIState();
}

class _Cloning_A_UIState extends State<Cloning_A_UI> {
  @override
  Widget build(BuildContext context) {
    var h=MediaQuery.of(context).size.height;
    var w=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    child: Container(
                 // color: Colors.yellow,
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          Positioned(
                            child: Container(
                              decoration: BoxDecoration(image: DecorationImage(fit:BoxFit.cover
                                  ,image: NetworkImage('https://assets.medpagetoday.net/media/images/82xxx/82702.jpg?width=0.6'))),
                              height: (MediaQuery.of(context).size.height / 2)-50,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                              Positioned(
                                bottom:0,
                                right: 18,
                                child: Container(
                                  child: CircleAvatar(
                                    radius: 50,
                                    backgroundImage: NetworkImage('https://scontent.fdac99-1.fna.fbcdn.net/v/t39.30808-1/340620783_890937765345876_7740305824492697715_n.jpg?stp=c0.67.200.200a_dst-jpg_p200x200&_nc_cat=101&ccb=1-7&_nc_sid=7206a8&_nc_eui2=AeF6tT1opXXQtFSszHmRwfd-mfhdIDO1-AGZ-F0gM7X4AXVZfXq_8macttirwhYgB5DWFG1xKzhG_sUO-5wOz6Je&_nc_ohc=ZJdo8eztT1cAX_uA4Yk&_nc_ht=scontent.fdac99-1.fna&oh=00_AfCCr9HlmTBiQWDcX35tZJBUm8YMO-Dagz1MpTYMdeGejA&oe=64780B05'),
                                    backgroundColor: Colors.black,
                                  ),
                                ),
                          )
                        ],
                      ),
                )
                ),

              ],
            ),
            Container(
              height: h/8,
              width: w,
             // color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Real Madrid fans tour in  Spain",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  Text("Something need to write here",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 17),),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    custom('20',Icons.favorite),
                  custom('35',Icons.ios_share_outlined),
                  custom('40',Icons.comment),
                  custom('10',Icons.face),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}


Widget custom(String text,IconData icon){
  return  Row(
    children: [
      Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      SizedBox(width: 4,),
      Icon(icon),
    ],
  );
}
