import 'dart:async';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'dart:math' show pi;
import 'package:ugo/constants.dart';
import 'package:ugo/widgets/footer.dart';

class CelebrationPage extends StatefulWidget {
  const CelebrationPage({super.key});

  @override
  State<CelebrationPage> createState() => _CelebrationPageState();
}

class _CelebrationPageState extends State<CelebrationPage> {
  late final ConfettiController _controller;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _controller = ConfettiController(duration: const Duration(seconds: 2))
      ..play();
    Future.delayed(const Duration(milliseconds: 500), () {
      _controller.play();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer?.cancel();
    super.dispose();
  }

  /// A custom Path to paint hearts.
  Path drawHeart(Size size) {
    double width = size.width;
    double height = size.height;

    Path path = Path();
    path.moveTo(0.5 * width, height * 0.35);
    path.cubicTo(0.2 * width, height * 0.1, -0.25 * width, height * 0.6,
        0.5 * width, height);
    path.moveTo(0.5 * width, height * 0.35);
    path.cubicTo(0.8 * width, height * 0.1, 1.25 * width, height * 0.6,
        0.5 * width, height);
    path.close();
    return path;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: ConfettiWidget(
              confettiController: _controller,
              blastDirection: pi / 2,
              emissionFrequency: 0.02,
              numberOfParticles: 30,
              shouldLoop: true,
              colors: const [
                Colors.green,
                Colors.blue,
                Colors.pink,
                Colors.orange,
                Colors.purple
              ],
              minimumSize: const Size(20, 18),
              maximumSize: const Size(20, 18),
              createParticlePath: drawHeart,
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              "The End",
              style: TextStyle(
                fontFamily: "Southam",
                fontSize: 60,
                color: kPrimaryColor,
                letterSpacing: 3,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ConfettiWidget(
              confettiController: _controller,
              blastDirection: -pi / 2,
              emissionFrequency: 0.02,
              numberOfParticles: 30,
              shouldLoop: true,
              colors: const [
                Colors.green,
                Colors.blue,
                Colors.pink,
                Colors.orange,
                Colors.purple
              ],
              minimumSize: const Size(20, 18),
              maximumSize: const Size(20, 18),
              createParticlePath: drawHeart,
            ),
          ),
          const Positioned(
            bottom: 12,
            right: 12,
            child: Footer(),
          ),
        ],
      ),
    );
  }
}
