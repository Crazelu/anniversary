import 'package:flutter/material.dart';
import 'package:ugo/constants.dart';
import 'package:ugo/models/story_line.dart';

String _getImage(String image) {
  return "https://raw.githubusercontent.com/Crazelu/anniversary/main/images/$image.png";
}

class Story {
  final String? image;
  final List<StoryLine> lines;

  const Story({
    required this.lines,
    this.image,
  });

  static List<Story> stories = [
    Story(
      image: _getImage("img4"),
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
          text: "Noun\n\n",
          fontSize: 14,
          color: Colors.white.withOpacity(.8),
        ),
        const StoryLine(
          text: "What it feels like to be kissed\n",
        ),
        const StoryLine(
          text: "s l o w l y\n",
          fontStyle: FontStyle.italic,
        ),
        const StoryLine(
          text: "eyes half closed\n",
        ),
        const StoryLine(
          text: "dreaming of northern lights:\n",
        ),
        const StoryLine(
          text: "soft magic, fiery touch, warmth, safety.\n",
        ),
      ],
    ),
    Story(
      image: _getImage("img3"),
      lines: const [
        StoryLine(
          text: "I love theatre because of you\n",
          fontFamily: "Mono",
          letterSpacing: 1,
          fontSize: 20,
          color: kPrimaryColor,
          height: 2,
        ),
        StoryLine(
          text: "The first time I saw you on stage,\n",
        ),
        StoryLine(
          text: "you wore a white dress with red accessories.\n",
        ),
        StoryLine(
          text: "I remember standing next to Faith, half smiling.\n",
        ),
        StoryLine(
          text: "You found us after your performance\n",
        ),
        StoryLine(
          text: "with a huge smile on your face.\n",
        ),
        StoryLine(
          text: "Noise really gets to me but your presence drowned it all.\n",
        ),
        StoryLine(
          text: "The second time I saw you on stage,\n",
        ),
        StoryLine(
          text: "you played a pregnant woman.\n",
        ),
        StoryLine(
          text: "I wished I had a front row seat.\n",
        ),
        StoryLine(
          text: "You found me later in the pavilion.\n",
        ),
        StoryLine(
          text: "And on our way home I got jealous when you greeted a boy.\n",
        ),
      ],
    ),
    Story(
      image: _getImage("img1"),
      lines: const [
        StoryLine(
          text: "Center\n",
          fontFamily: "Mono",
          letterSpacing: 1,
          fontSize: 20,
          color: kPrimaryColor,
          height: 2,
        ),
        StoryLine(
          text: "I came to a city with no center.\n",
        ),
        StoryLine(
          text: "And I held on to you.\n",
        ),
        StoryLine(
          text: "On nights when I felt lost,\n",
        ),
        StoryLine(
          text: "I found you and we sat outside,\n",
        ),
        StoryLine(
          text: "your legs on mine,\n",
        ),
        StoryLine(
          text: "stargazing and sighing.\n",
        ),
        StoryLine(
          text: "You'd hug me, hold my hands in yours,\n",
        ),
        StoryLine(
          text: "make them warm, and I'll find my way home again.\n",
        ),
      ],
    ),
    Story(
      image: _getImage("img2"),
      lines: const [
        StoryLine(
          text: "Us\n",
          fontFamily: "Mono",
          letterSpacing: 1,
          fontSize: 20,
          color: kPrimaryColor,
          height: 2,
        ),
        StoryLine(
          text: "This picture describes us sometimes.\n",
        ),
        StoryLine(
          text: "Hard/soft. Hot/cold. Passionate/indifferent.\n",
        ),
        StoryLine(
          text: "But we're reminded to remain kind to each other.\n",
        ),
        StoryLine(
          text: "And in doing that, there's no me/you.\n",
        ),
        StoryLine(text: "It's just   "),
        StoryLine(
          text: "us",
          fontSize: 50,
          color: kPrimaryColor,
          fontFamily: "Southam",
          height: 0.1,
        ),
        StoryLine(
          text: ",",
          fontSize: 50,
          fontFamily: "Southam",
          height: 0.1,
        ),
        StoryLine(text: " always."),
      ],
    ),
    Story(
      image: _getImage("img6"),
      lines: const [
        StoryLine(
          text: "Don't hate me but...\n",
          fontFamily: "Mono",
          letterSpacing: 1,
          fontSize: 20,
          color: kPrimaryColor,
          height: 2,
        ),
        StoryLine(
          text: "Remember this day?\n",
        ),
        StoryLine(
          text: "You said \"let's exchange shirts\".\n",
        ),
        StoryLine(
          text: "I went out wearing yours and you went out wearing mine.\n",
        ),
        StoryLine(
          text: "We went to Dominos after an appointment.\n",
        ),
        StoryLine(
          text:
              "And when we came back, you smiled too hard for the camera in the elevator.\n",
        ),
        StoryLine(
          text:
              "Or was that you actually shaking and trying to hold me for balance? 😂\n",
        ),
      ],
    ),
    Story(
      image: _getImage("img7"),
      lines: const [
        StoryLine(
          text: "🤭 ",
          letterSpacing: 1,
          fontSize: 20,
          color: kPrimaryColor,
          height: 2,
        ),
        StoryLine(
          text: "awww",
          fontSize: 20,
          fontFamily: "Mono",
          color: kPrimaryColor,
          letterSpacing: 2,
          height: 0.2,
        ),
        StoryLine(
          text: " x20\n",
          letterSpacing: 1,
          fontSize: 14,
          color: Colors.white60,
        ),
        StoryLine(
          text: "I put this one in to feel myself.\n",
        ),
        StoryLine(
          text: "See as I fine like 100 people!\n",
        ),
        StoryLine(
          text: "And what's that ashawo in your eyes bro?\n",
        ),
      ],
    ),
    Story(
      image: _getImage("img10"),
      lines: const [
        StoryLine(
          text: "Ilorin\n",
          fontFamily: "Mono",
          letterSpacing: 1,
          fontSize: 20,
          color: kPrimaryColor,
          height: 2,
        ),
        StoryLine(
          text: "Do you remember the first day I worked from MalHub?\n",
        ),
        StoryLine(
          text: "I didn't know how public transport worked in Ilorin.\n",
        ),
        StoryLine(
          text: "You brought me to this intersection at Challenge.\n",
        ),
        StoryLine(
          text: "We got in a taxi and you, this adorable woman,\n",
        ),
        StoryLine(
          text: "you put your head on my shoulder.\n",
        ),
        StoryLine(
          text: "In that moment, I fully settled in.\n",
        ),
        StoryLine(
          text: "I like how you defy public attention.\n",
        ),
        StoryLine(
          text: "Even though you claim not to like PDA 😏\n",
        ),
      ],
    ),
    Story(
      image: _getImage("img9"),
      lines: const [
        StoryLine(
          text: "Ogige\n",
          fontFamily: "Mono",
          letterSpacing: 1,
          fontSize: 20,
          color: kPrimaryColor,
          height: 2,
        ),
        StoryLine(
          text: "I went to the market with you for the first time.\n",
        ),
        StoryLine(
          text: "I saw you light up at the sight of things you liked.\n",
        ),
        StoryLine(
          text: "\"Lucky see that gown\".\n",
        ),
        StoryLine(
          text: "You walked with so much grace I bet people stared at us.\n",
        ),
        StoryLine(
          text: "And then I pissed you off 🫢\n",
        ),
      ],
    ),
    Story(
      image: _getImage("img11"),
      lines: const [
        StoryLine(
          text: "Growing Pains\n",
          fontFamily: "Mono",
          letterSpacing: 1,
          fontSize: 20,
          color: kPrimaryColor,
          height: 2,
        ),
        StoryLine(
          text: "We've hurt these past months.\n",
        ),
        StoryLine(
          text: "We've hit walls and we've taken some beating.\n",
        ),
        StoryLine(
          text: "It's been hard and no one knows better than we do.\n",
        ),
        StoryLine(
          text: "But you chose me;\n",
        ),
        StoryLine(
          text: "to give us a chance.\n",
        ),
        StoryLine(
          text: "And I chose you;\n",
        ),
        StoryLine(
          text: "to make this work.\n",
        ),
        StoryLine(
          text: "This is working, Ugo.\n",
        ),
        StoryLine(
          text: "We are growing and doing really well.\n",
        ),
        StoryLine(
          text: "I'm proud of   ",
        ),
        StoryLine(
          text: "us",
          letterSpacing: 5,
          fontSize: 50,
          color: kPrimaryColor,
          fontFamily: "Southam",
          height: 0.1,
        ),
      ],
    ),
    Story(
      image: _getImage("img5"),
      lines: const [
        StoryLine(
          text: "Thank you!\n",
          fontFamily: "Southam",
          letterSpacing: 5,
          fontSize: 60,
          color: kPrimaryColor,
          height: 0.7,
        ),
        StoryLine(
          text: "For the way you say my name\n",
        ),
        StoryLine(
          text: "For the warmth and safety of your company\n",
        ),
        StoryLine(
          text: "For choosing us\n",
        ),
        StoryLine(
          text: "For going on adventures with me\n",
        ),
        StoryLine(
          text: "I love you!\n",
        ),
      ],
    ),
  ];
}
