import 'package:flutter/material.dart';
import './registeration.dart';

void main() {
  runApp(const MaterialApp(
    home: ProductApp(),
  ));
}

class ProductApp extends StatelessWidget {
  const ProductApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Container(
                      margin: const EdgeInsets.only(bottom: 50),
                      child: const Image(image: AssetImage('assets/icon.png'))),
                  ElevatedButton(
                      onPressed: () {
                        print("Button Pressed");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterProduct()),
                        );
                      },
                      child: const Text('Cadastrar Produto'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(20),
                        primary: Colors.orange,
                      ))
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
