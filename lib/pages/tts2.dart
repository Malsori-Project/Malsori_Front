import 'package:flutter/material.dart';

class Tts2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' '),
      ),
      body: Center(
        child: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[ 
            SizedBox(height: 5),
            Container(
                width: 345, // 전체 너비
                height: 7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), // 둥근 모서리 반지름
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5), // 둥근 모서리 반지름
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Color(0xFF3F89E1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.only(right: 294),
                child: Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text: '2',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color(0xFF3F89E1), // 1을 파란색으로 설정
          ),
        ),
        TextSpan(
          text: ' / ',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.grey, // 중간의 /을 검정색으로 설정
          ),
        ),
        TextSpan(
          text: '2',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.grey, // 2를 회색으로 설정
          ),
        ),
      ],
    ),
    textAlign: TextAlign.left,
  ),
                ),
                SizedBox(height: 2.5),
                Container(
                  padding: const EdgeInsets.only(left: 41),width: double.infinity,child: Text( '유의사항을 읽고 시작,', textAlign: TextAlign.left, style: TextStyle(color: Color(0xFF474C50),fontSize: 25, fontWeight: FontWeight.bold),)
                ),
                SizedBox(height: 20),
               Container(child: Container(
                    width: 226,
                    height: 199,
                    child: Image.asset(
                      'asset/image 28.png',
                      fit: BoxFit.contain, 
                    ),
                  ),),
                  SizedBox(height: 30),
                  Container(
  margin: EdgeInsets.only(bottom: 10),
  padding: EdgeInsets.all(20),
  decoration: BoxDecoration(
    color: Colors.blue[100],
    borderRadius: BorderRadius.circular(20),
  ),
  height: 60,
  width: 330,
),


Container(
  margin: EdgeInsets.only(bottom: 10),
  padding: EdgeInsets.all(20),
  decoration: BoxDecoration(
    color: Colors.blue[200],
    borderRadius: BorderRadius.circular(20),
  ),
  height: 150,
  width: 330,
),

Container(
  margin: EdgeInsets.only(bottom: 10),
  padding: EdgeInsets.all(20),
  decoration: BoxDecoration(
    color: Colors.blue[100],
    borderRadius: BorderRadius.circular(20),
  ),
  height: 60,
  width: 330,
),
SizedBox(height: 30),
Container(
  width: 330,
  height: 80,
  padding: const EdgeInsets.only(bottom: 10.0),
  child: GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, '/tts3');
    },
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xFF3F89E1),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Align(
          alignment: Alignment(0, 0.2), // 약간 아래로 배치
          child: Text(
            '시작하기',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
    ),
  ),
)

          ],
        ),
      ),
    );
  }
}
