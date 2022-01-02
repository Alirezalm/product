import 'package:flutter/material.dart';

class RegisterProduct extends StatelessWidget {
  var nameController = TextEditingController();
  var desController = TextEditingController();
  var priceController = TextEditingController();

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
                      print(nameController.text);
                      print(desController.text);
                      print(priceController.text);
                    },
                    child: const Text('Enviar'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      primary: Colors.orange,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
