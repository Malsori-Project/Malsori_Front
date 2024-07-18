import 'package:flutter/material.dart';

class Tts1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' '),
      ),
      body: Center(
        child: Column(
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
                      Expanded(
                        child: Container(
                          color: Color(0xFFD8D8D8),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.only(right: 298),
                child: Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text: '1',
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
                  padding: const EdgeInsets.only(left: 40),width: double.infinity,child: Text( '원하는 목소리를 선택', textAlign: TextAlign.left, style: TextStyle(color: Color(0xFF474C50),fontSize: 25, fontWeight: FontWeight.bold),)
                ),
                SizedBox(height: 1.5),
                Container(
                  padding: const EdgeInsets.only(left: 40),width: double.infinity,child: Text( '성별 & 나이', textAlign: TextAlign.left, style: TextStyle(color: Color(0xFFD3D3D3),fontSize: 17, fontWeight: FontWeight.bold),)
                ),
                SizedBox(height: 43),
                Container(
  padding: const EdgeInsets.all(8.0),
  child: SizedBox(
    height: 480.0, 
    width: 360.0,// 명시적인 높이 설정
    child: GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 36.5 / 45,
      children: List.generate(9, (index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              
              // 눌렀을 때의 효과를 넣어줄 수 있는 부분입니다.
              print('Button $index clicked');
            },
            child: Container(
              decoration: BoxDecoration(
                color: index == 4 ? Color(0xFF8CB8ED) : Color(0xFFBFCEF5),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        );
      }),
    ),
  ),
),
            Container(
  width: 320,
  height: 80,
  padding: const EdgeInsets.only(bottom: 10.0),
  child: GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, '/tts2');
    },
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xFF3F89E1),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Align(
          alignment: Alignment(0, 0.2), // 약간 아래로 배치
          child: Text(
            '선택완료',
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
      )
    );
  }
}
