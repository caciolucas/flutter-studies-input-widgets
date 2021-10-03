import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  const EntradaCheckbox({Key? key}) : super(key: key);

  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {
  bool? _comidaMexicana = false;
  bool? _comidaBrasileira = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Entrada de Dados"),
        ),
        body: Container(
          child: Column(
            children: [
              // Text("Comida Brasileira"),
              // Checkbox(
              //   value: _estaSelecionado,
              //   onChanged: (bool? valor){
              //     setState(() {
              //       _estaSelecionado = valor;
              //     });
              //   },
              // )
              CheckboxListTile(
                title: Text("Comida Brasileira"),
                subtitle: Text("A melhor comida do mundo"),
                activeColor: Colors.red,
                selected: _comidaBrasileira ?? false,
                value: _comidaBrasileira, 
                secondary: Icon(Icons.fastfood),
                onChanged: (bool? valor){
                  setState(() {
                    _comidaBrasileira = valor;
                  });
                }
              ),
              CheckboxListTile(
                title: Text("Comida Mexicana"),
                subtitle: Text("A segunda melhor comida do mundo"),
                activeColor: Colors.orange,
                selected: _comidaMexicana ?? false,
                value: _comidaMexicana, 
                secondary: Icon(Icons.fastfood),
                onChanged: (bool? valor){
                  setState(() {
                    _comidaMexicana = valor;
                  });
                }
              ),
              ElevatedButton(
                onPressed: (){
                  print("Comida Brasileira: $_comidaBrasileira");
                  print("Comida Mexicana: $_comidaMexicana");
                },
                child: Text("Marcadas?", style: TextStyle(fontSize: 20),))
            ]
          ),
        )
    );
  }
}

