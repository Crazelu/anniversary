import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:ugo/story_page.dart';
import 'package:ugo/widgets/footer.dart';
import 'package:ugo/widgets/responsive_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  bool _ready = false;
  Timer? _timer;
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 300),
  );
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      _timer = Timer(const Duration(milliseconds: 1200), () {
        setState(() {
          _ready = true;
        });
        _timer?.cancel();
      });

      Future.delayed(
        const Duration(milliseconds: 21200),
        () {
          _controller.forward();
        },
      );
    });
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.bounceInOut,
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ResponsiveBuilder<ImageProvider>(
              desktop: const AssetImage("assets/bg_desktop.png"),
              mobile: const AssetImage("assets/bg_mobile.png"),
            ).resolve,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(.8),
              BlendMode.darken,
            ),
          ),
        ),
        child: _ready
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Spacer(),
                  AnimatedTextKit(
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      RotateAnimatedText(
                        '❤️',
                        duration: const Duration(milliseconds: 2000),
                        rotateOut: false,
                        textStyle: const TextStyle(
                          fontSize: 60,
                          height: .05,
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: MediaQuery.of(context).size.width *
                        ResponsiveBuilder<double>(
                          desktop: .65,
                          mobile: .85,
                        ).resolve,
                    child: Center(
                      child: AnimatedTextKit(
                        isRepeatingAnimation: false,
                        pause: const Duration(milliseconds: 1600),
                        animatedTexts: [
                          TyperAnimatedText(
                            'Hey Ugo!',
                            speed: const Duration(milliseconds: 250),
                            textStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontFamily: 'Southam',
                              fontSize: 100,
                              letterSpacing: 9,
                            ),
                          ),
                          TyperAnimatedText(
                            'I have tried so hard for days to keep this secret 😂',
                            speed: const Duration(milliseconds: 120),
                            textAlign: TextAlign.center,
                            textStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontFamily: 'Mono',
                              fontSize: 50,
                              letterSpacing: 5,
                            ),
                          ),
                          TyperAnimatedText(
                            'I hope that you enjoy this, my love.',
                            speed: const Duration(milliseconds: 120),
                            textAlign: TextAlign.center,
                            textStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontFamily: 'Mono',
                              fontSize: 50,
                              letterSpacing: 5,
                            ),
                          ),
                          TyperAnimatedText(
                            'Happy Anniversary 😘',
                            speed: const Duration(milliseconds: 100),
                            textAlign: TextAlign.center,
                            textStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontFamily: 'Mono',
                              fontSize: 50,
                              letterSpacing: 5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 48),
                  ScaleTransition(
                    scale: _animation,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const StoryPage(),
                          ),
                        );
                      },
                      child: const Text('Gbe mi de be'),
                    ),
                  ),
                  const Spacer(),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Footer(),
                  ),
                ],
              )
            : const SizedBox(),
      ),
    );
  }
}
