import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Image & Spacer Widget')),
        body: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Row(
              children: [
                const Spacer(
                  flex: 3,
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.grey,
                  child: const Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://asset.winnetnews.com/uploads/images/nisa-1585199938.jpg'),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.grey,
                  child: const Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://i.pinimg.com/564x/56/2f/21/562f21dce3de6e2720c9c799e3f6da5a.jpg',
                    ),
                  ),
                ),
                const Spacer(
                  flex: 3,
                ),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            Row(
              children: [
                const Spacer(
                  flex: 1,
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.grey,
                  child: const Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://img.kpopmap.com/960x0/2020/04/ITZY-For-ELLE-Korea-Magazine-April-Issue-7.jpg',
                    ),
                  ),
                ),
                const Spacer(
                  flex: 3,
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.grey,
                  child: const Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://i.pinimg.com/736x/df/c0/49/dfc04917ba03e008acdda586cf4b30c7.jpg',
                    ),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
            const Spacer(
              flex: 6,
            ),
          ],
        ),
      ),
    );
  }
}
