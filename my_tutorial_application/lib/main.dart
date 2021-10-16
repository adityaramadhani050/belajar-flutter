import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('List & ListView')),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: const Text('Tambah'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (counter > 0) {
                        counter--;
                      }
                    });
                  },
                  child: const Text('Kurang'),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: counter,
                itemBuilder: (context, index) {
                  return Text(
                    'Data ke-$index',
                    style: const TextStyle(fontSize: 25),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
