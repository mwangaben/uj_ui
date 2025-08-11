import 'package:flutter/material.dart';

Widget UJButton({
  required String text,
  required Function onTap,
  Color background = Colors.blue,
  Color textColor = Colors.white,
  double radius = 20,
}) {
  return InkWell(
    onTap: () => onTap(),
    child: Container(
      width: 300,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius), color: background),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: textColor, fontWeight: FontWeight.w800, fontSize: 18),
        ),
      ),
    ),
  );
}
