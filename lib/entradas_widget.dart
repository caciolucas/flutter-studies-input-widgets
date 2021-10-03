import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WidgetsEntrada extends StatefulWidget {
  const WidgetsEntrada({Key? key}) : super(key: key);

  @override
  _WidgetsEntradaState createState() => _WidgetsEntradaState();
}

class _WidgetsEntradaState extends State<WidgetsEntrada> {
  String? _escolhaUsuario;
  bool _escolhaSwitch = false;
  bool? _comidaBrasileira = false;
  double _valorSlider = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input widget"),
      ),
      body: Container(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: TextField(
                  keyboardType: TextInputType
                      .number, // Tipo de teclado (text, emailAddress, number...)
                  decoration: InputDecoration(labelText: 'Number input'),
                  // enabled: false, // Disabilita o campo
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: TextField(
                  keyboardType: TextInputType
                      .text, // Tipo de teclado (text, emailAddress, number...)
                  decoration: InputDecoration(labelText: 'Text input'),
                  // enabled: false, // Disabilita o campo
                  maxLength: 2, // Define limite de caracteres
                  // maxLengthEnforced: true, // Restringe caracteres ao limite (deprecated)
                  maxLengthEnforcement: MaxLengthEnforcement
                      .truncateAfterCompositionEnds, // Restringe caracteres ao limite

                  style: TextStyle(
                    // fontSize: 24,
                    color: Colors.lightGreen,
                  ),
                  onChanged: (String texto) {
                    print('O texto digitado foi: $texto');
                  }, // Callback chamado ao digitar
                  onSubmitted: (String texto) {
                    print('O texto enviado foi: $texto');
                  }, // Callback chamado ao enviar
                ),
              ),
              Text("Choose your gender",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  )),
              RadioListTile(
                  title: Text("Male"),
                  value: "m",
                  groupValue: _escolhaUsuario,
                  onChanged: (String? escolha) {
                    setState(() {
                      _escolhaUsuario = escolha;
                    });
                  }),
              RadioListTile(
                  title: Text("Female"),
                  value: "f",
                  groupValue: _escolhaUsuario,
                  onChanged: (String? escolha) {
                    setState(() {
                      _escolhaUsuario = escolha;
                    });
                  }),
              Text("Checkbox",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  )),
              CheckboxListTile(
                  title: Text("Comida Brasileira"),
                  subtitle: Text("Best food in the world"),
                  activeColor: Colors.red,
                  selected: _comidaBrasileira ?? false,
                  value: _comidaBrasileira,
                  secondary: Icon(Icons.fastfood),
                  onChanged: (bool? valor) {
                    setState(() {
                      _comidaBrasileira = valor;
                    });
                  }),
              SwitchListTile(
                  title: Text("Enable specific configuration"),
                  value: _escolhaSwitch,
                  onChanged: (bool valor) {
                    setState(() {
                      _escolhaSwitch = valor;
                    });
                  }),
              Slider(
                value: _valorSlider,
                onChanged: (double valor) {
                  setState(() {
                    _valorSlider = valor.roundToDouble(); // Valores inteiros (melhor substituido pelo divisions XD)
                    // _valorSlider = valor;
                  });
                },
                min: 0,
                max: 100,
                label: _valorSlider.round().toString(),
                divisions: 10,
                activeColor: Colors.red,
                inactiveColor: Colors.deepPurple,
                thumbColor: Colors.purple,
              ),
            ]),
          )),
    );
  }
}
