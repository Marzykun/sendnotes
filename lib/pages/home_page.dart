import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Top image
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Center(
                child: Image.asset(
                  'assets/side_eye_cat.jpg', // <-- put your image in assets/
                  height: size.height * 0.25, // responsive size
                  fit: BoxFit.contain,
                ),
              ),
            ),

            const Spacer(), // push buttons to bottom

            // Buttons group
            Padding(
              padding: const EdgeInsets.only(bottom: 48.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/about'),
                      child: const Text('About'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/memes'),
                      child: const Text('Resources'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: 200,
                    child: TextButton(
                      onPressed: () => Navigator.pushNamed(context, '/easter'),
                      child: const Text("Don't Click Me 👀"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
