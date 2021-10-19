import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Navigation Intro',
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text(
                'Go to the second page',
              ),
              onPressed: () {
                // TODO: Navigate to the second page
              },
            ),
            ElevatedButton(
              onPressed: () {
                // TODO: Navigate to the third screen and get back the result
              },
              child: Text('I take the ...'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second page'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Welcome to the Second page'),
            ElevatedButton(
              child: const Text(
                'Go back',
              ),
              onPressed: () {
                // TODO: Navigate back
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third page'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              // TODO: send result back
            },
            child: const Text('Blue pill'),
          ),
          ElevatedButton(
            onPressed: () {
              // TODO: send result back
            },
            child: const Text('Red pill'),
            style: ElevatedButton.styleFrom(primary: Colors.red),
          ),
        ],
      ),
    );
  }
}
