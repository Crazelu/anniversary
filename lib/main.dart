import 'package:flutter/material.dart';
import 'package:ugo/constants.dart';
import 'package:ugo/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage("assets/bg_desktop.png"), context);
    precacheImage(const AssetImage("assets/bg_mobile.png"), context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ugo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: kPrimaryColor,
        appBarTheme: const AppBarTheme(color: kPrimaryColor),
        primarySwatch: MaterialColor(
          kPrimaryColor.value,
          {
            50: kPrimaryColor.withOpacity(.05),
            100: kPrimaryColor.withOpacity(.1),
            200: kPrimaryColor.withOpacity(.2),
            300: kPrimaryColor.withOpacity(.3),
            400: kPrimaryColor.withOpacity(.4),
            500: kPrimaryColor.withOpacity(.5),
            600: kPrimaryColor.withOpacity(.6),
            700: kPrimaryColor.withOpacity(.7),
            800: kPrimaryColor.withOpacity(.8),
            900: kPrimaryColor.withOpacity(.9),
          },
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.resolveWith(
              (states) => const Size(200, 48),
            ),
            backgroundColor: MaterialStateProperty.resolveWith(
              (states) {
                return states.contains(MaterialState.pressed)
                    ? kPrimaryColor.withOpacity(.6)
                    : kPrimaryColor;
              },
            ),
            foregroundColor: MaterialStateProperty.resolveWith(
              (states) => Colors.white,
            ),
            textStyle: MaterialStateProperty.resolveWith(
              (states) => const TextStyle(
                fontSize: 16,
                fontFamily: 'NunitoSans',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        fontFamily: "NunitoSans",
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.black,
          onPrimary: Colors.white,
          secondary: kPrimaryColor,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.black,
          onBackground: Colors.white,
          surface: Colors.blueGrey,
          onSurface: Colors.white,
        ),
      ),
      home: const HomePage(),
    );
  }
}
