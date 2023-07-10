import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ugo/widgets/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: ResponsiveBuilder<String>(
          desktop: "Made with so much ",
          mobile: "Made with ",
        ).resolve,
        style: TextStyle(
          color: Colors.white.withOpacity(.5),
          fontSize: 12,
        ),
        children: [
          TextSpan(
            text: "❤️ ",
            style: TextStyle(
              color: Colors.redAccent.withOpacity(.8),
              fontSize: 12,
            ),
          ),
          const TextSpan(text: "by "),
          TextSpan(
            text: "Crazelu",
            style: TextStyle(
              color: Theme.of(context).primaryColor.withOpacity(.8),
              fontSize: 12,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launchUrl(Uri.parse("https://github.com/crazelu"));
              },
          )
        ],
      ),
    );
  }
}
