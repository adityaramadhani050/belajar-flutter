import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

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
        appBar: AppBar(title: const Text('Stateless Stateful Widget')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                counter.toString(),
                style: TextStyle(
                  color: (counter == 10)
                      ? Colors.green
                      : (counter == 0)
                          ? Colors.red
                          : Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0 + (counter * 2),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                      fixedSize: MaterialStateProperty.all(const Size(120, 30)),
                      elevation: MaterialStateProperty.all(15.0),
                      shadowColor: MaterialStateProperty.all(Colors.green),
                    ),
                    onPressed: () {
                      setState(() {
                        if (counter < 10) {
                          counter++;
                        }
                      });
                    },
                    child: const Text(
                      '+',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      fixedSize: MaterialStateProperty.all(const Size(120, 30)),
                      elevation: MaterialStateProperty.all(15.0),
                      shadowColor: MaterialStateProperty.all(Colors.red),
                    ),
                    onPressed: () {
                      setState(() {
                        if (counter > 0) {
                          counter--;
                        }
                      });
                    },
                    child: const Text(
                      '-',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
