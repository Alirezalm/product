import 'package:flutter/material.dart';

class RegisterProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            "Cadastro de Produtos",
            style: TextStyle(fontSize: 28),
          ),
          TextField(
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              labelText: "Nome: ",
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.orange,
                width: 2,
              )),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Descrição: ",
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.orange,
                width: 2,
              )),
            ),
          ),
          TextField(
             decoration: InputDecoration(
              labelText: "Valor: ",
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.orange,
                width: 2,
              )),
            ),
          )
        ],
      ),
    );
  }
}
