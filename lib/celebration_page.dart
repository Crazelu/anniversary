import 'dart:async';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'dart:math' show pi;
import 'package:ugo/constants.dart';
import 'package:ugo/home_page.dart';

class CelebrationPage extends StatefulWidget {
  const CelebrationPage({super.key});

  @override
  State<CelebrationPage> createState() => _CelebrationPageState();
}

class _CelebrationPageState extends State<CelebrationPage>
    with TickerProviderStateMixin {
  late final ConfettiController _confettiController;
  Timer? _timer;

  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 300),
  );
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.bounceInOut,
      ),
    );
    _confettiController =
        ConfettiController(duration: const Duration(seconds: 2))..play();
    Future.delayed(const Duration(milliseconds: 500), () {
      _confettiController.play();
    });
    Future.delayed(
      const Duration(milliseconds: 1200),
      () {
        _animationController.forward();
      },
    );
  }

  @override
  void dispose() {
    _confettiController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  /// A custom Path to paint hearts.
  Path _drawHeart(Size size) {
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
              confettiController: _confettiController,
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
              maximumSize: const Size(24, 20),
              createParticlePath: _drawHeart,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "The End",
                  style: TextStyle(
                    fontFamily: "Southam",
                    fontSize: 60,
                    color: kPrimaryColor,
                    letterSpacing: 3,
                  ),
                ),
                const SizedBox(height: 24),
                ScaleTransition(
                  scale: _animation,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor.withOpacity(.8),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => const HomePage(),
                        ),
                      );
                    },
                    child: const Text('To the beninging'),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ConfettiWidget(
              confettiController: _confettiController,
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
              maximumSize: const Size(24, 20),
              createParticlePath: _drawHeart,
            ),
          ),
        ],
      ),
    );
  }
}
