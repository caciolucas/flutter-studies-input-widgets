import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  const EntradaRadioButton({Key? key}) : super(key: key);

  @override
  _EntradaRadioButtonState createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {
  String? _escolhaUsuario;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Entrada de Dados"),
        ),
        body: Column(
          children: [
            // Text("Masculino"),
            // Radio(value: "m", groupValue: _escolhaUsuario, onChanged: (String? escolha){
            //   setState(() {
            //     _escolhaUsuario = escolha;
            //   });
            // }),
            // Text("Feminino"),
            // Radio(value: "f", groupValue: _escolhaUsuario, onChanged: (String? escolha){
            //   setState(() {
            //     _escolhaUsuario = escolha;
            //   });
            // }),
            RadioListTile(
              title: Text("Masculino"),
              value: "m",
              groupValue: _escolhaUsuario,
              onChanged: (String? escolha){
                setState(() {
                  _escolhaUsuario = escolha;
                });
              }
            ),
            RadioListTile(
              title: Text("Feminino"),
              value: "f",
              groupValue: _escolhaUsuario,
              onChanged: (String? escolha){
                setState(() {
                  _escolhaUsuario = escolha;
                });
              }
            ),
            ElevatedButton(onPressed: (){
              print("O usuário escolheu $_escolhaUsuario");
              },
              child: Text("Mostrar")
            )
          ],
        ));
  }
}
