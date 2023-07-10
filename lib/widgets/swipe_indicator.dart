import 'package:flutter/material.dart';

class SwipeIndicator extends StatefulWidget {
  const SwipeIndicator({super.key});

  @override
  State<SwipeIndicator> createState() => _SwipeIndicatorState();
}

class _SwipeIndicatorState extends State<SwipeIndicator>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  void _listener() {
    if (_controller.status == AnimationStatus.completed) {
      _controller.reverse();
    }
    if (_controller.status == AnimationStatus.dismissed) {
      _controller.forward();
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    );

    _animation = Tween<Offset>(
      begin: const Offset(0.1, 0.4),
      end: const Offset(-0.1, 0.4),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      ),
    );

    _controller.addListener(_listener);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.removeListener(_listener);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: size.width,
      ),
      child: SlideTransition(
        position: _animation,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/swipe.png",
              height: 50,
              width: 50,
              color: Colors.white,
            ),
            const Text(
              "  Swipe",
              style: TextStyle(
                fontFamily: "Mono",
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
