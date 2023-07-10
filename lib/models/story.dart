import 'package:flutter/material.dart';
import 'package:ugo/constants.dart';
import 'package:ugo/models/story_line.dart';

// 1284
const _image =
    "https://raw.githubusercontent.com/Crazelu/anniversary/main/images/screenshot2.png";

class Story {
  final String? image;
  final List<StoryLine> lines;

  const Story({
    required this.lines,
    this.image,
  });

  static List<Story> stories = [
    Story(
      image:
          "https://raw.githubusercontent.com/Crazelu/anniversary/main/images/img3.png",
      lines: [
        StoryLine.itallic(
          text: "Ugo\n",
          fontFamily: "Southam",
          fontWeight: FontWeight.bold,
          letterSpacing: 3,
          fontSize: 40,
          color: kPrimaryColor,
        ),
        StoryLine(
          text: "Noun\n",
          fontSize: 14,
          height: 1.5,
          color: Colors.white.withOpacity(.8),
        ),
        const StoryLine(
          text: "Beauriii",
          height: 1.5,
        ),
      ],
    ),
    const Story(
      image:
          "https://raw.githubusercontent.com/Crazelu/anniversary/main/images/img1.png",
      lines: [
        StoryLine(
          text: "Center\n",
          fontFamily: "Mono",
          letterSpacing: 1,
          fontSize: 20,
          color: kPrimaryColor,
          height: 2,
        ),
        StoryLine(
          text: "I came to a city with no center\n",
        ),
      ],
    ),
    const Story(
      image:
          "https://raw.githubusercontent.com/Crazelu/anniversary/main/images/img2.png",
      lines: [
        StoryLine(
          text: "Center\n",
          fontFamily: "Mono",
          letterSpacing: 1,
          fontSize: 20,
          color: kPrimaryColor,
          height: 2,
        ),
        StoryLine(
          text: "I came to a city with no center\n",
        ),
      ],
    ),
  ];
}
