import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_tutorial_application/widgets/photo_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan Row dan Column'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 250,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              color: Colors.lightBlueAccent,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      'ALBUM 1',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      PhotoCard(text: 'Photo 1', backgroundColor: Colors.red),
                      PhotoCard(text: 'Photo 2', backgroundColor: Colors.blue),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              color: Colors.lightBlueAccent,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      'ALBUM 2',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      PhotoCard(text: 'Photo 3', backgroundColor: Colors.green),
                      PhotoCard(text: 'Photo 4', backgroundColor: Colors.amber),
                    ],
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
