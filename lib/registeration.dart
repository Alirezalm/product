import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:product/product.dart';
import 'package:http/http.dart' as http;

class RegisterProduct extends StatefulWidget {
  @override
  State<RegisterProduct> createState() => _RegisterProductState();
}

class _RegisterProductState extends State<RegisterProduct> {
  var nameController = TextEditingController();

  var desController = TextEditingController();

  var priceController = TextEditingController();

  String message = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Cadastro de Produtos",
              style: TextStyle(fontSize: 24),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: TextField(
                controller: nameController,
                textAlign: TextAlign.left,
                decoration: const InputDecoration(
                  labelText: "Nome: ",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.orange,
                    width: 2,
                  )),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              child: TextField(
                controller: desController,
                textAlign: TextAlign.left,
                decoration: const InputDecoration(
                  labelText: "Descrição: ",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.orange,
                    width: 2,
                  )),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: priceController,
                textAlign: TextAlign.left,
                decoration: const InputDecoration(
                  labelText: "Valor: ",
                  hintText: "R\$ 0,00",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.orange,
                    width: 2,
                  )),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: ElevatedButton(
                    onPressed: () {
                      var product = Product(
                        name: nameController.text,
                        description: desController.text,
                        price: priceController.text,
                      );
                      Future<String> createProduct(Product product) async {
                        final response = await http.post(
                          Uri.parse('http://192.168.5.176:8000/products/'), // insert your ip
                          headers: <String, String>{
                            'Content-Type': 'application/json; charset=UTF-8',
                          },
                          body: jsonEncode(<String, String>{
                            'name': product.name,
                            'description': product.description,
                            'price': product.price,
                          }),
                        );
                        var a = jsonDecode(response.body)['status'];
                        return a;
                      }

                      var status = createProduct(product);

                      status.then((value) {
                        setState(() {
                          message = value;
                        });
                      });
                      nameController.text = "";
                      desController.text = "";
                      priceController.text = "";
                    },
                    child: const Text('Enviar'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      primary: Colors.orange,
                    )),
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(message,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.grey,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
