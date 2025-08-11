import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UJTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final int minLines;
  final int maxLines;
  final double contentPaddingHorizontal;
  final double contentPaddingVertical;
  final double radius;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;

  const UJTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    this.minLines = 1,
    this.maxLines = 7,
    this.contentPaddingHorizontal = 12,
    this.contentPaddingVertical = 0,
    this.radius = 12,
    this.prefixIcon,
    this.suffixIcon,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters,
      obscureText: obscureText,
      minLines: minLines,
      maxLines: maxLines,
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.symmetric(
          horizontal: contentPaddingHorizontal,
          vertical: contentPaddingVertical,
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 1,
          ),
          // borderSide: BorderSide.none
        ),

// border on unselected
        enabledBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color: Theme.of(context).colorScheme.onSurfaceVariant),
          borderRadius: BorderRadius.circular(radius),
        ),

// border on selected
        focusedBorder: OutlineInputBorder(
          borderSide:
          BorderSide(color: Theme.of(context).colorScheme.onSurfaceVariant),
          borderRadius: BorderRadius.circular(radius),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        label: Text(
          hintText,
          style: TextStyle(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
