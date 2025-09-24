import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Text(
            'just made this page to share notes. all credits go to the respective owners of the notes and resources. \n\n made with ❤️ by thambi/bhaijaan.\n\n feel free to contribute by solving the questions.',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
