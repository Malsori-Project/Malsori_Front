import 'package:flutter/material.dart';
import 'dart:math';

class Lcd2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
            
            ),
            WaveWidget(),
            
          ],
        ),
      ),
    );
  }
}

class WaveWidget extends StatefulWidget {
  @override
  _WaveWidgetState createState() => _WaveWidgetState();
}

class _WaveWidgetState extends State<WaveWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          painter: WavePainter(_controller.value),
          child: Container(
            width: double.infinity,
            height: 812,
          ),
        );
      },
    );
  }
}

class WavePainter extends CustomPainter {
  final double animationValue;
  final Paint wavePaint1 = Paint()
    ..color = Color(0xFF3F89E1)
    ..style = PaintingStyle.fill;
    final Paint wavePaint2 = Paint()
    ..color = Color(0xFFBBD8FC)
    ..style = PaintingStyle.fill;
    final Paint wavePaint3 = Paint()
    ..color = Color(0xFFD1E6FF)
    ..style = PaintingStyle.fill;

  WavePainter(this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {
    _drawWave(canvas, size, wavePaint1, 20, size.width / 0.5, animationValue, 0); // 첫 번째 파도 그리기
    _drawWave(canvas, size, wavePaint2, 30, size.width / 0.5, animationValue + 0.5, 80); // 두 번째 파도 그리기
    _drawWave(canvas, size, wavePaint3, 40, size.width / 0.5, animationValue + 0.7, 160); // 세 번째 파도 그리기
  }

  void _drawWave(Canvas canvas, Size size, Paint paint, double waveHeight, double waveLength, double phaseShift, double verticalShift) {
    final path = Path();
    path.moveTo(0, size.height / 2 + verticalShift); // 경로 시작점 설정 (수직 위치 조정)

    for (double i = 0; i <= size.width; i++) {
      final double y = waveHeight *
          sin((i / waveLength * 2 * pi) + (phaseShift * 2 * pi)) +
          size.height / 2 + verticalShift; // 파도의 y 좌표 계산
      path.lineTo(i, y); // 경로에 점 추가
    }

    path.lineTo(size.width, size.height); // 경로에 점 추가 (하단)
    path.lineTo(0, size.height); // 경로에 점 추가 (하단)
    path.close(); // 경로 닫기

    canvas.drawPath(path, paint); // 캔버스에 경로 그리기
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
