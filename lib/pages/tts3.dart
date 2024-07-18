import 'package:flutter/material.dart';

class Tts3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' '),
      ),
      body: Center(
        child: Column(
       //   mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.only(left: 50),width: double.infinity,child: Text( '텍스트,\n입력', textAlign: TextAlign.left, style: TextStyle(color: Color(0xFF3F89E1),fontSize: 50, fontWeight: FontWeight.w900,height: 1.2,)
                ),),
SizedBox(height: 20),
Container(
  
  padding: EdgeInsets.all(20),
  decoration: BoxDecoration(
    color: Color(0xFFC5DCF6),
    borderRadius: BorderRadius.circular(20),
  ),
  height: 60,
  width: 325,
),
SizedBox(height: 360),
Container(
  width: 150,
  height: 150,
 // padding: const EdgeInsets.only(bottom: 10.0),
  child: GestureDetector(
    onTap: () {
      //활동
    },
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xFF3F89E1),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
  //            crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(padding: const EdgeInsets.only(left: 35), 
                 child: Image.asset(
                  'asset/image 29.png', // 이미지 경로를 여기에 입력
                  width: 80,
                  height: 80,
                  ),
                ),],)
    ),
  ),
)

          ],
        ),
      ),
    );
  }
}
