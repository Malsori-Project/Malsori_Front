import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Lcd1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(54.0),
          child:AppBar(flexibleSpace:Stack(
              children: [
                Positioned(
                  left: 50, // 원하는 위치로 설정 
                  top: 72,
                   // 원하는 위치로 설정 
                  child: Center(
      child: Text(
        '버튼을 누르고 시작', // 표시할 텍스트
        style: TextStyle(
          color: Colors.black, // 텍스트 색상
          fontSize: 20,
          fontWeight: FontWeight.bold // 텍스트 크기
        ),
      ),),
                ),
              ],
            ),)
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('LCD1 Screen'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/lcd2');
              },
              child: Text('Go to LCD2'),
            ),
          ],
        ),
      ),
    );
  }
}
