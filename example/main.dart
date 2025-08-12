import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';
import 'package:uj_ui/uj_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UJ UI Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  TextEditingController searchController = TextEditingController();
  TextEditingController firstNmaeController = TextEditingController();

  List<Country> suggestions = [
    Country(name: 'Tanzania', code: 'Tz'),
    Country(name: 'Uganda', code: 'Ug'),
    Country(name: 'Kenya', code: 'KE'),
  ];


  final focus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          spacing: 20,
          children: [
            UJSearchField(
                controller: searchController,
                borderRadius: 12,
                suggestions: suggestions
                    .map((country) =>
                        SearchFieldListItem(country.name, item: country))
                    .toList(),
                onSuggestionTap: (SearchFieldListItem<Country> country){
                  focus.unfocus();
                  searchController.text = country.item!.name.toUpperCase();
                },
              hint: 'Country',
              focusNode: focus,
            ),
            UJTextField(
              controller: firstNmaeController,
              hintText: 'First Name',
              obscureText: false,
            ),
            UJButton(
              text: 'Save',
              onTap: () => print('Saved'),
            ),
          ],
        ),
      ),
    );
  }
}

class Country {
  final String name;
  final String code;

  const Country({
    required this.name,
    required this.code,
  });
}
