import 'package:flutter/material.dart';

Text UJLabelText({required String text, Color textColor = Colors.black}) {
  return Text(
    text,
    style: TextStyle(fontWeight: FontWeight.w500, color: textColor),
  );
}