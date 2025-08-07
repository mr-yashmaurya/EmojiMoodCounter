
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(EmojiMoodCounter());
}

class EmojiMoodCounter extends StatelessWidget {
  const EmojiMoodCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}


