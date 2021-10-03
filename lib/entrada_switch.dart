import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({Key? key}) : super(key: key);

  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  var _escolhaUsuario = false;
  var _escolhaConfig = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Entrada de Dados"),
        ),
        body: Column(
          children: [
            SwitchListTile(
              title: Text("Receber notificações"),
              value: _escolhaUsuario,
              onChanged: (bool valor){
                setState(() {
                  _escolhaUsuario = valor;  
                });
              }
            ),
            SwitchListTile(
              title: Text("Carregar imagens automaticamente"),
              value: _escolhaConfig,
              onChanged: (bool valor){
                setState(() {
                  _escolhaConfig = valor;  
                });
              }
            ),
            ElevatedButton(onPressed: (){
              print("O usuário escolheu $_escolhaUsuario");
              print("O usuário escolheu $_escolhaConfig");
              },
              child: Text("Mostrar")
            )
            // Switch(
            //   value: _escolhaUsuario,
            //   onChanged: (bool valor){
            //     setState(() {
            //       _escolhaUsuario = valor;  
            //     });
            //   }),
            // Text("Receber notificações?"),
          ]
        )
    );
  }
}
