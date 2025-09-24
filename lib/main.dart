import 'package:flutter/material.dart';
import 'package:rick_roll/pages/about_page.dart';
import 'pages/home_page.dart';
import 'pages/about_page.dart';
import 'pages/links_page.dart';
import 'pages/notes_page.dart';
import 'pages/easter_egg_page.dart';

void main() {
  runApp(const MyWebsite());
}

class MyWebsite extends StatelessWidget {
  const MyWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Fun Website',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.purple,
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
        '/memes': (context) => const LinksPage(), // Resources hub
        '/notes': (context) => const NotesPage(), // subjects → units
        '/easter': (context) => const EasterEggPage(),
      },
    );
  }
}
