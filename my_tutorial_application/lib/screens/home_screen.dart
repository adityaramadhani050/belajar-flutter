import 'package:flutter/material.dart';
import 'package:my_tutorial_application/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DetailScreen()));
          },
          child: const Text('Detail Screen'),
        ),
      ),
    );
  }
}
