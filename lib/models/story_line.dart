import 'package:flutter/material.dart';

class StoryLine {
  final String text;
  final String fontFamily;
  final double fontSize;
  final FontStyle fontStyle;
  final FontWeight fontWeight;
  final Color color;
  final double? letterSpacing;
  final double? height;

  const StoryLine({
    required this.text,
    this.fontFamily = "NunitoSans",
    this.fontSize = 18,
    this.fontStyle = FontStyle.normal,
    this.fontWeight = FontWeight.w400,
    this.color = Colors.white,
    this.letterSpacing,
    this.height,
  });

  factory StoryLine.itallic({
    required String text,
    String fontFamily = "NunitoSans",
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.w400,
    Color color = Colors.white,
    double? letterSpacing,
    double? height,
  }) {
    return StoryLine(
      text: text,
      fontStyle: FontStyle.italic,
      fontFamily: fontFamily,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: letterSpacing,
      height: height,
    );
  }
}
