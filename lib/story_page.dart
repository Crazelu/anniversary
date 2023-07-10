import 'package:flutter/material.dart';
import 'package:ugo/celebration_page.dart';
import 'package:ugo/models/story.dart';
import 'package:ugo/widgets/story_widget.dart';
import 'package:ugo/widgets/swipe_indicator.dart';
import 'package:flutter/gestures.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  late final _pageController = PageController();
  bool _hideSwipeIndicator = false;

  void _listener() {
    if (_pageController.hasClients &&
        (_pageController.page ?? 0) >= 0.5 &&
        !_hideSwipeIndicator) {
      setState(() {
        _hideSwipeIndicator = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _pageController.addListener(_listener);
  }

  @override
  void dispose() {
    _pageController.removeListener(_listener);
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            ScrollConfiguration(
              behavior: const MouseDraggableScrollBehavior(),
              child: PageView(
                physics: const BouncingScrollPhysics(),
                key: const ValueKey("PageView"),
                controller: _pageController,
                children: [
                  for (var story in Story.stories) StoryWidget(story: story),
                  const CelebrationPage(),
                ],
              ),
            ),
            if (!_hideSwipeIndicator)
              const Positioned(
                bottom: 30,
                child: SwipeIndicator(),
              ),
          ],
        ),
      ),
    );
  }
}

class MouseDraggableScrollBehavior extends MaterialScrollBehavior {
  const MouseDraggableScrollBehavior();
  @override
  Set<PointerDeviceKind> get dragDevices => <PointerDeviceKind>{
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
