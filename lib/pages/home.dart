import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar:PreferredSize(
          
          preferredSize: Size.fromHeight(54.0),
          child:AppBar(flexibleSpace:Stack(
              children: [
                Positioned(
                  left: 10, // 원하는 위치로 설정 
                  top: 64, // 원하는 위치로 설정 
                  child: Container(
                    width: 174,
                    height: 39,
                    child: Image.asset(
                      'asset/name.png',
                      fit: BoxFit.contain, 
                    ),
                  ),
                ),
              ],
            ),)
        ),
        body: Container(
          child: Column(
          children: <Widget>[
            Container(child: Container(color: Color(0xFF3F89E1),height: 333,)),
            SizedBox(height: 40),
            Container(padding: const EdgeInsets.only(left: 25.0),width: double.infinity,child: Text( '원하는 목소리를 선택해보세요', textAlign: TextAlign.left, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
             SizedBox(height: 7),
             Padding(
                padding: const EdgeInsets.only(bottom: 40.0), // 아래쪽으로부터 40만큼 패딩을 줌
                child: Column(
                 children: <Widget>[
                   GestureDetector(
                      onTap: () {
                       Navigator.pushNamed(context, '/tts1');
                      // 클릭 시 실행될 코드
                       print('첫 번째 위젯이 클릭되었습니다!');
                      },
                      child: Container(
                        width: 387,
                        height: 105,
                        
                        decoration: BoxDecoration(
                          color: Color(0xFFBFCEF5), // BoxDecoration 내의 color 속성 사용
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                       alignment: Alignment.center,
                       
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
  //            crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(padding: const EdgeInsets.only(left: 30), 
                 child: Image.asset(
                  'asset/image 30.png', // 이미지 경로를 여기에 입력
                  width: 55,
                  height: 55,
                  ),
                ),
              const SizedBox(width: 35), // 이미지와 텍스트 사이 간격
          const Text(
            'ㅇㅇㅇ님에게 어울리는\n음성고르러 가기',
            style: TextStyle(color: Colors.white, fontSize:20,fontWeight:  FontWeight.bold,height: 1.1,),
          ),
        ],
      ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(padding: const EdgeInsets.only(left: 25.0),width: double.infinity,child: Text( 'ㅇㅇㅇ님\n디스플레이 연결을 도와드릴게요', textAlign: TextAlign.left, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
                    SizedBox(height: 7),
                   GestureDetector(
                      onTap: () {
                       Navigator.pushNamed(context, '/lcd1');
                      // 클릭 시 실행될 코드
                       print('두 번째 위젯이 클릭되었습니다!');
                      },
                      child: Container(
                       width: 387,
                       height: 105,
                        decoration: BoxDecoration(
                         color: Color(0xFF8CB8ED), // BoxDecoration 내의 color 속성 사용
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                       ),
                        alignment: Alignment.center,
                       
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
  //            crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(padding: const EdgeInsets.only(left: 30), 
                 child: Image.asset(
                  'asset/image 31.png', // 이미지 경로를 여기에 입력
                  width: 55,
                  height: 55,
                  ),
                ),
              const SizedBox(width: 35), // 이미지와 텍스트 사이 간격
          const Text(
            '대화의 질을 높여줄\n디스플레이 연결하러 가기',
            style: TextStyle(color: Colors.white, fontSize:20,fontWeight:  FontWeight.bold,height: 1.1,),
          ),
        ],
      ),
                     ),
                    ),
                  ],
                ),
             ),
               ],
            ),
        
          )
        
      
        )
      );
   }

}
