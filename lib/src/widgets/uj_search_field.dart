import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

class UJSearchField<T> extends StatelessWidget {
  final List<SearchFieldListItem<T>> suggestions;
  final Function(SearchFieldListItem<T>)? onSuggestionTap;
  final Function()? onTap;
  final String hint;
  final double borderRadius;
  final FocusNode focusNode;
  final String? Function(String?)? validator;
  final String? errorText;
  final TextEditingController controller;
  final Color? suggestionsBackgroundColor;
  final Color? inputBorderColor;
  final Color? inputBorderFocusedColor;

  // final Key key;
  const UJSearchField({
    super.key,
    required this.suggestions,
    required this.onSuggestionTap,
    required this.hint,
    required this.focusNode,
    required this.controller,
    this.borderRadius = 24,
    this.validator,
    this.errorText,
    this.onTap,
    this.suggestionsBackgroundColor = Colors.white,
    this.inputBorderColor = Colors.blue,
    this.inputBorderFocusedColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 0,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchField<T>(
          onTap: onTap,
          controller: controller,
          autoCorrect: true,
          key: key,
          hint: hint,
          suggestionsDecoration: SuggestionDecoration(
            color: suggestionsBackgroundColor,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
            padding: EdgeInsets.symmetric(vertical: 0),
          ),
          searchInputDecoration: SearchInputDecoration(
            labelText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(
                color: inputBorderColor!,
                width: 1,
                style: BorderStyle.solid,
              ),
            ),
            prefixIcon: Icon(Icons.search),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              borderSide: BorderSide(
                width: 1,
                color: inputBorderFocusedColor!,
                style: BorderStyle.solid,
              ),
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          ),
          suggestions: suggestions,
          focusNode: focusNode,
          suggestionState: Suggestion.expand,
          onSuggestionTap: onSuggestionTap,
          validator: validator,
        ),
        errorText != null
            ? Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  errorText!,
                  style: TextStyle(color: Colors.red[900]),
                ),
              )
            : Text(''),
      ],
    );
  }
}

// }