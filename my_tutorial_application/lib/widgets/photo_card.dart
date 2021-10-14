import 'package:flutter/material.dart';

class PhotoCard extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  const PhotoCard({
    required this.text,
    required this.backgroundColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      color: backgroundColor,
      padding: const EdgeInsets.fromLTRB(7, 12, 7, 0),
      child: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              margin: const EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.yellow, Colors.blue],
                ),
              ),
            ),
            Text(
              text,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
