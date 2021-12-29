import 'package:flutter/material.dart';

void main() {
  runApp(const ProductApp());
}

class ProductApp extends StatelessWidget {
  const ProductApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image(image: AssetImage('assets/icon.png')),
                    ElevatedButton(
                        onPressed: () => {print("Button Pressed")},
                        child: Text('Caadstrar Produto'),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(20),
                          primary: Colors.orange,
                        ))
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
