// TODO Implement this library.
import 'package:flutter/material.dart';

class EasterEggPage extends StatelessWidget {
  const EasterEggPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🎉 Easter Egg')),
      body: const Center(
        child: Text(
          'thambi inga enna panra, poi padi da dai\n abe sale idhar kya kar raha hai ja ke padhai kar le \n\n lol goodluck for exams.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
