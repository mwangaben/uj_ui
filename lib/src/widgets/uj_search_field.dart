import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';


class UJSearchField<T> extends StatelessWidget {
  final List<SearchFieldListItem<T>> suggestions;
  final Function(SearchFieldListItem<T>)? onSuggestionTap;
  final String hint;
  final double borderRadius;
  final TextEditingController controller;
  // final Key key;
  const UJSearchField({
    super.key,
    required this.controller,
    required  this.suggestions,
    required this.onSuggestionTap,
    required this.hint,
    this.borderRadius = 24,
  });

  @override
  Widget build(BuildContext context) {
    return SearchField<T>(
      controller: controller,
      hint: hint,
      key: key,
      suggestionsDecoration: SuggestionDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border.all(color: Theme.of(context).colorScheme.surfaceDim),
        borderRadius: BorderRadius.circular(10),
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 4),
      ),
      searchInputDecoration: SearchInputDecoration(
        hintStyle: const TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
        labelText: hint,
        labelStyle: TextStyle(color: Theme.of(context).colorScheme.inverseSurface, fontStyle: FontStyle.italic),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: Theme.of(context).colorScheme.outline, width: 1, )
        ),

        // errorBorder: OutlineInputBorder(
        //   borderSide: BorderSide(color: Colors.red),
        // ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide:  BorderSide(
            width: 1,
            color: Theme.of(context).colorScheme.primary,
            style: BorderStyle.solid,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        // hintText: hint,
      ),
      suggestions: suggestions,
      focusNode: FocusNode(),
      suggestionState: Suggestion.expand,
      onSuggestionTap: onSuggestionTap,

    );
  }
}