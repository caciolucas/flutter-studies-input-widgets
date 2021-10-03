import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  const EntradaSlider({Key? key}) : super(key: key);

  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
  double _valorSlider = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Entrada de Dados"),
        ),
        body: Column(children: [
          Slider(
            value: _valorSlider,
            onChanged: (double valor) {
              setState(() {
                _valorSlider = valor.roundToDouble(); // Valores inteiros (melhor substituido pelo divisions XD)
                // _valorSlider = valor;
              });
            },
            min: 0,
            max: 10,
            label: _valorSlider.round().toString(),
            divisions: 10,
            activeColor: Colors.red,
            inactiveColor: Colors.deepPurple,
            thumbColor: Colors.purple,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Salvar"),
          ),
        ]));
  }
}
