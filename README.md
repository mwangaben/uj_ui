# UJ_UI

A modern Flutter UI package with beautiful, customizable components designed for clean and consistent user interfaces.


## Features

- 🎯 **Customizable** - Extensive customization options
- 🚀 **Easy to Use** - Simple, intuitive API

## Components

### Buttons
- `UJButton` - Customizable button
- Loading states and icon support

![HuxButton Variants](screenshots/hux-buttons.png)




### Inputs
- `UJTextField` - Enhanced text input with customizable options


- `UJSearchField` - Interactive Search with custom styling and labels



### Widgets
- `HuxLoading` - Customizable loading indicators
- `HuxLoadingOverlay` - Full-screen loading overlay


## Installation

```bash
flutter pub add uj_ui
```


## Usage

### Basic Setup

Wrap your app with the Hux theme:

```dart
import 'package:flutter/material.dart';
import 'package:uj_ui/uj_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UJ UI Demo',
      theme: HuxTheme.lightTheme,
      darkTheme: HuxTheme.darkTheme,
      home: MyHomePage(),
    );
  }
}
```

### Using Components

#### Button

```dart
UJButton(
  onPressed: () => print('Button pressed'),
  child: Text('Primary Button'),
  variant: HuxButtonVariant.primary,
  size: HuxButtonSize.medium,
  icon: Icons.star,
)
```

#### Text Field

```dart
UJTextField(
  label: 'Email',
  hint: 'Enter your email',
  prefixIcon: Icon(Icons.email),
  onChanged: (value) => print(value),
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }
    return null;
  },
)
```

## License

This project is licensed under the MIT License - see the LICENSE file for details.