import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _targetColor = Colors.grey;
  bool _isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Draggable WIdget')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable<Color>(
                  data: Colors.red,
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.red.withOpacity(0.5),
                      shape: const StadiumBorder(),
                    ),
                  ),
                  child: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.red,
                      shape: StadiumBorder(),
                    ),
                  ),
                  childWhenDragging: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: Colors.yellow,
                  child: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.yellow,
                      shape: StadiumBorder(),
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.yellow.withOpacity(0.5),
                      shape: const StadiumBorder(),
                    ),
                  ),
                  childWhenDragging: const SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                    ),
                  ),
                ),
              ],
            ),
            DragTarget<Color>(
              onWillAccept: (value) => true,
              onAccept: (value) {
                _isAccepted = true;
                _targetColor = value;
              },
              builder: (context, candidates, rejected) {
                return (_isAccepted)
                    ? SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: _targetColor,
                          shape: const StadiumBorder(),
                        ),
                      )
                    : const SizedBox(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: Colors.grey,
                          shape: StadiumBorder(),
                        ),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}
