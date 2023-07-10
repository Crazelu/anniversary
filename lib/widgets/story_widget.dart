import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ugo/models/story.dart';
import 'package:ugo/widgets/responsive_builder.dart';

class StoryWidget extends StatelessWidget {
  final Story story;
  const StoryWidget({
    super.key,
    required this.story,
  });

  @override
  Widget build(BuildContext context) {
    if (story.image == null) {
      return Center(
        child: Text.rich(
          TextSpan(
            children: [
              for (var line in story.lines)
                TextSpan(
                  text: line.text,
                  style: TextStyle(
                    fontFamily: line.fontFamily,
                    fontSize: line.fontSize,
                    fontStyle: line.fontStyle,
                    fontWeight: line.fontWeight,
                    color: line.color,
                    letterSpacing: line.letterSpacing,
                    height: line.height,
                  ),
                ),
            ],
          ),
        ),
      );
    }

    final size = MediaQuery.of(context).size;

    return ResponsiveWidgetBuilder(
      desktop: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: story.image!,
              fit: BoxFit.cover,
              imageBuilder: (context, imageProvider) {
                return Container(
                  height: size.height,
                  width: size.width * .6,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                      colorFilter: filter,
                    ),
                  ),
                );
              },
              progressIndicatorBuilder: (context, child, loadingProgress) =>
                  Container(
                height: size.height,
                width: size.width * .6,
                color: Colors.grey.shade300,
              ),
            ),
            Positioned(
              right: 0,
              child: SizedBox(
                height: size.height,
                width: size.width * .4,
                child: ListView(
                  padding: const EdgeInsets.all(48),
                  children: [
                    const SizedBox(height: 144),
                    Text.rich(
                      TextSpan(
                        children: [
                          for (var line in story.lines)
                            TextSpan(
                              text: line.text,
                              style: TextStyle(
                                fontFamily: line.fontFamily,
                                fontSize: line.fontSize,
                                fontStyle: line.fontStyle,
                                fontWeight: line.fontWeight,
                                color: line.color,
                                letterSpacing: line.letterSpacing,
                                height: line.height,
                              ),
                            ),
                        ],
                      ),
                      softWrap: true,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      mobile: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: story.image!,
              fit: BoxFit.cover,
              imageBuilder: (context, imageProvider) {
                return Container(
                  height: size.height * .4,
                  width: size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                      colorFilter: filter,
                    ),
                  ),
                );
              },
              progressIndicatorBuilder: (context, child, loadingProgress) =>
                  Container(
                height: size.height * .4,
                width: size.width,
                color: Colors.grey.shade300,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        for (var line in story.lines)
                          TextSpan(
                            text: line.text,
                            style: TextStyle(
                              fontFamily: line.fontFamily,
                              fontSize: line.fontSize,
                              fontStyle: line.fontStyle,
                              fontWeight: line.fontWeight,
                              color: line.color,
                              letterSpacing: line.letterSpacing,
                              height: line.height,
                            ),
                          ),
                      ],
                    ),
                    softWrap: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//sepia filter
const filter = ColorFilter.matrix(
  <double>[
    0.393,
    0.769,
    0.189,
    0,
    0,
    0.349,
    0.686,
    0.168,
    0,
    0,
    0.272,
    0.534,
    0.131,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
  ],
);
